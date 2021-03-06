import os
import sys
import pickle
from pprint import pprint
from sklearn.naive_bayes import MultinomialNB
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.feature_extraction.text import TfidfTransformer
from sklearn.metrics import precision_score, recall_score, f1_score, accuracy_score


def read_csv(data_path):
    with open(data_path) as f:
        data = f.readlines()
    return [' '.join(line.strip().split(',')) for line in data]


def load_data(data_dir):
    x_train = read_csv(os.path.join(data_dir, 'train.csv'))
    x_val = read_csv(os.path.join(data_dir, 'val.csv'))
    x_test = read_csv(os.path.join(data_dir, 'test.csv'))
    labels = read_csv(os.path.join(data_dir, 'labels.csv'))
    labels = [int(label) for label in labels]
    y_train = labels[:len(x_train)]
    y_val = labels[len(x_train): len(x_train)+len(x_val)]
    y_test = labels[-len(x_test):]
    return x_train, x_val, x_test, y_train, y_val, y_test

#look at tut 1 and see where the files are for with ns and without ns
def train(x_train, y_train, model_code):
    print('Calling CountVectorizer')

    if(model_code =="mnb_uni"):
     count_vect = CountVectorizer(analyzer="word",ngram_range=(1,1))
    elif(model_code =="mnb_bi"):
     count_vect = CountVectorizer(analyzer="word",ngram_range=(2,2))
    
    elif(model_code =="mnb_uni_bi"):
     count_vect = CountVectorizer(analyzer="word",ngram_range=(1,2))
    
    elif(model_code =="mnb_uni_ns"):
     count_vect = CountVectorizer(analyzer="word",ngram_range=(1,1))
    
    elif(model_code =="mnb_bi_ns"):
     count_vect = CountVectorizer(analyzer="word",ngram_range=(2,2))
    
    elif(model_code =="mnb_uni_bi_ns"):
     count_vect = CountVectorizer(analyzer="word",ngram_range=(1,2))
    
    x_train_count = count_vect.fit_transform(x_train)
    print('Building Tf-idf vectors')
    tfidf_transformer = TfidfTransformer()
    x_train_tfidf = tfidf_transformer.fit_transform(x_train_count)
    print('Training MNB')
    clf = MultinomialNB().fit(x_train_tfidf, y_train)
    return clf, count_vect, tfidf_transformer


def evaluate(x, y, clf, count_vect, tfidf_transformer):
    x_count = count_vect.transform(x)
    x_tfidf = tfidf_transformer.transform(x_count)
    preds = clf.predict(x_tfidf)

    return {
        'accuracy': accuracy_score(y, preds),
        'precision': precision_score(y, preds),
        'recall': recall_score(y, preds),
        'f1': f1_score(y, preds),
        }


def main(data_dir,model_code):
    """
    loads the dataset along with labels, trains a simple MNB classifier
    and returns validation and test scores in a dictionary
    """
    # load data
    x_train, x_val, x_test, y_train, y_val, y_test = load_data(data_dir)
    # train
    clf, count_vect, tfidf_transformer = train(x_train, y_train, model_code)

    #bring that clf and etc over here!

    with open('a2/{}.pkl'.format(model_code), 'wb') as f:
        pickle.dump(clf, f)

    with open('a2/count_vect.pkl', 'wb') as f:
        pickle.dump(count_vect, f)

    with open('a2/tfidf_transformer.pkl', 'wb') as f:
        pickle.dump(tfidf_transformer, f)

    scores = {}
    # validate
    print('Validating')
    scores['val'] = evaluate(x_val, y_val, clf, count_vect, tfidf_transformer)
    # test
    print('Testing')
    scores['test'] = evaluate(x_test, y_test, clf, count_vect, tfidf_transformer)
    print(scores)
    return scores


if __name__ == '__main__':
    #pprint(main(sys.argv[1]))
    other = main(sys.argv[1], sys.argv[2])
    print('\n'.join(other))