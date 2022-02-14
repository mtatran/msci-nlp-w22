import sys
import pickle
from pprint import pprint
from main import load_data

def predict(line, clf, count_vect, tfidf_transformer):
    """slightly different from the evalaute function in main.py"""
    # this function could've been called on all the lines at once but doing one
    # line at a time to avoid confusion
    line2feature = tfidf_transformer.transform(count_vect.transform([line]))
    return 'Postive' if clf.predict(line2feature) else 'Negative'

def savefiles(sentimentPred):
   # save processed files
    with open('data/sentimentPred.txt', 'w') as f:
        f.write(sentimentPred)

def main(text_path, model_code):
    # load data
    with open(text_path) as f:
        sample_text = f.readlines()
    sample_text = [line.strip() for line in sample_text]

    with open('tut_2/{}.pkl'.format(model_code), 'rb') as f:
        clf = pickle.load(f)

    with open('tut_2/count_vect.pkl', 'rb') as f:
        count_vect = pickle.load(f)

    with open('tut_2/tfidf_transformer.pkl', 'rb') as f:
       tfidf_transformer = pickle.load(f)

    sentimentPredictions = ['{} => {}'.format(line, predict(line, clf, count_vect, tfidf_transformer))
            for line in sample_text]
    #savefiles(sentimentPredictions)
    return sentimentPredictions


if __name__ == '__main__':
    predictions = main(sys.argv[1], sys.argv[2])
    print('\n'.join(predictions))
