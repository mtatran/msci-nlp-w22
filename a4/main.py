# -*- coding: utf-8 -*-
"""main.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1u_F3-TspQ7_k8A5MC-o1damYPpHN_zsc
"""

# Commented out IPython magic to ensure Python compatibility.
import os
import gensim
import keras
import numpy as np
import pandas as pd

from sklearn.model_selection import train_test_split

from keras.models import Sequential
from keras.layers import Input, Dense, LSTM, Embedding, Dropout, BatchNormalization, Activation, Bidirectional
from keras.preprocessing.text import text_to_word_sequence, Tokenizer
from keras.preprocessing.sequence import pad_sequences

import matplotlib as mpl
# %matplotlib inline
from matplotlib import pyplot as plt
from keras.utils.vis_utils import plot_model
from IPython.display import Image



np.random.seed(1003)

train = open("data/train.csv", "r")
trainData = train.readlines()

train_labels = open("labels.csv", "r")
trainLabels = train_labels.readlines()

test = open("data/test.csv", "r")
testData = test.readlines()

#test_labels = open("data/test_ns_labels.csv", "r")
#testLabel = test_labels.readlines()

val = open("data/val.csv", "r")
valData = val.readlines()

#val_labels = open("data/val_ns_labels.csv", "r")
#valLabel = val_labels.readlines()


labels = [int(label) for label in trainLabels]
y_train = labels[:len(trainData)]
y_val = labels[len(trainData): len(trainData)+len(valData)]
y_test = labels[-len(testData):]
print(len(y_train))

print('Number of train sentences:', len(trainData))
print('Number of train sentences:', len(y_train))

x_test=[]
y_test_labels=[]

x_val = []
y_val_labels = []

# Create a dataframe to store the sentence and polarity as 2 columns
df = pd.DataFrame(columns=['sentence', 'polarity'])
df['sentence'] = trainData
df['polarity'] = y_train
df = df.sample(frac=1, random_state=10) # Shuffle the rows
df.reset_index(inplace=True, drop=True)

df

# These are some hyperparameters that can be tuned
MAX_SENT_LEN = 23
MAX_VOCAB_SIZE = 20000
LSTM_DIM = 128
EMBEDDING_DIM = 100
BATCH_SIZE = 32
N_EPOCHS = 10

# Pre-processing involves removal of puctuations and converting text to lower case
word_seq = [text_to_word_sequence(sent) for sent in df['sentence']]
print('90th Percentile Sentence Length:', np.percentile([len(seq) for seq in word_seq], 90))

tokenizer = Tokenizer(num_words=MAX_VOCAB_SIZE)
tokenizer.fit_on_texts([' '.join(seq[:MAX_SENT_LEN]) for seq in word_seq])

print("Number of words in vocabulary:", len(tokenizer.word_index))

# Convert the sequence of words to sequnce of indices
X_train = tokenizer.texts_to_sequences([' '.join(seq[:MAX_SENT_LEN]) for seq in word_seq])
X_train = pad_sequences(X_train, maxlen=MAX_SENT_LEN, padding='post', truncating='post')

y = df['polarity']

#test
word_seq = [text_to_word_sequence(sent) for sent in x_test]
X_test = tokenizer.texts_to_sequences([' '.join(seq[:MAX_SENT_LEN]) for seq in word_seq])
X_test = pad_sequences(X_test, maxlen=MAX_SENT_LEN, padding='post', truncating='post')

y = df['polarity']

#validate
word_seq = [text_to_word_sequence(sent) for sent in x_val]
X_val = tokenizer.texts_to_sequences([' '.join(seq[:MAX_SENT_LEN]) for seq in word_seq])
X_val = pad_sequences(X_val, maxlen=MAX_SENT_LEN, padding='post', truncating='post')

y = df['polarity']



# load the wordvec

from gensim.models import Word2Vec
X_word2Vec = "w2v.txt"

embeddings = gensim.models.KeyedVectors.load_word2vec_format(X_word2Vec, binary=True,  limit=500000)

print('words in w2w', len(embeddings.vocab))
print('dimension', embeddings.vector_size)

#embeddings

embeddings_matrix = np.random.uniform(-0.05, 0.05, size=(len(tokenizer.word_index)+1, EMBEDDING_DIM)) # +1 is because the matrix indices start with 0

for word, i in tokenizer.word_index.items(): # i=0 is the embedding for the zero padding
    try:
        embeddings_vector = embeddings[word]
    except KeyError:
        embeddings_vector = None
    if embeddings_vector is not None:
        embeddings_matrix[i] = embeddings_vector

#relu activation
import tensorflow

model1 = Sequential()
model1.add(Embedding(input_dim=len(tokenizer.word_index)+1,
                          output_dim=EMBEDDING_DIM,
                          weights = [embeddings_matrix], trainable=False, name='word_embedding_layer', 
                          mask_zero=True,
                          input_length=MAX_SENT_LEN))

model1.add(Dense(128, activation='relu', name = 'hidden_layer'))# tanh
model1.add(Dropout(rate=0.2, name='dropout_1')) # dropout
model1.add(Dense(2, activation='softmax', name='output_layer')) # softmax

model1.summary()

model1.compile(loss='binary_crossentropy',
              optimizer='adam',
              metrics=['accuracy'])

model1.save('nn_relu.model')

#this is not working

model1.fit(trainData, y_train,
          batch_size=BATCH_SIZE,
          epochs=N_EPOCHS,
          validation_data=(testData, y_test))

score, acc = model1.evaluate(trainData, y_test,
                            batch_size=BATCH_SIZE)
print("Accuracy on Test Set = {0:4.3f}".format(acc))

#sigmoid activation
import tensorflow

model2 = Sequential()
model2.add(Embedding(input_dim=len(tokenizer.word_index)+1,
                          output_dim=EMBEDDING_DIM,
                          weights = [embeddings_matrix], trainable=False, name='word_embedding_layer', 
                          mask_zero=True,
                          input_length=MAX_SENT_LEN))

model2.add(Dense(128, activation='sigmoid', name = 'hidden_layer'))# tanh
model2.add(Dropout(rate=0.2, name='dropout_1')) # dropout
model2.add(Dense(2, activation='softmax', name='output_layer')) # softmax

model2.summary()

model2.save('nn_sigmoid.model')

model2.compile(loss= 'binary_crossentropy',
               optimizer ='adam',
               metrics=['accuracy'])

#this is not working
model2.fit(trainData, y_train,
          batch_size=BATCH_SIZE,
          epochs=N_EPOCHS,
          validation_data=(testData, y_test))

score, acc = model2.evaluate(trainData, y_test,
                            batch_size=BATCH_SIZE)
print("Accuracy on Test Set = {0:4.3f}".format(acc))

#tanh activation
import tensorflow

model3 = Sequential()
model3.add(Embedding(input_dim=len(tokenizer.word_index)+1,
                          output_dim=EMBEDDING_DIM,
                          weights = [embeddings_matrix], trainable=False, name='word_embedding_layer', 
                          mask_zero=True,
                          input_length=MAX_SENT_LEN))

model3.add(Dense(128, activation='tanh', name = 'hidden_layer'))# tanh
model3.add(Dropout(rate=0.2, name='dropout_1')) # dropout
model3.add(Dense(2, activation='softmax', name='output_layer')) # softmax

model3.summary()

model3.compile(loss= 'binary_crossentropy',
               optimizer ='adam',
               metrics=['accuracy'])

model2.save('nn_tanh.model')

#this is not working
model3.fit(trainData, y_train,
          batch_size=BATCH_SIZE,
          epochs=N_EPOCHS,
          validation_data=(testData, y_test))

score, acc = model3.evaluate(trainData, y_test,
                            batch_size=BATCH_SIZE)
print("Accuracy on Test Set = {0:4.3f}".format(acc))

score, acc = model3.evaluate(trainData, y_test,
                            batch_size=BATCH_SIZE)
print("Accuracy on Test Set = {0:4.3f}".format(acc))

from google.colab import drive
drive.mount('/content/drive')