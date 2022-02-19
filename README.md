
MSCI 598 (Deep Learning for NLP) @ Uwaterloo

# Instructions to run the code
**General Instructions**: The command to run any tutorial's driver script follows a consistent format. From the root of this repository, run `python3 tut_[tut_number]/main.py [appropriate argument(s)]` where `tut_number` is an integer representing the tutorial number and appropriate arguments could be infered from the description below:

- [Assignment 1]:
  - *Driver script*: `python3 a1/main.py sentiment`.It will generate the training split as well generate labels.
- [Assignment 2]:
  - *Driver script*: `python3 a2/main.py data/processed`.This script trains a simple MNB classifier and saves the requrired files inside `a2` folder. To get the tokens with no stopwords, replace all_lines with filtered_words in py_tut, line 54.
  - *Interface script*: `python3 a2/inference.py a2 [model_code]`. Here, `model_code` is the type of MNB classifier we need to use.This script predicts a label for all the sentences in the sample text file.
 - [Assignment 3]:
  - *Driver script*: `python3 a1/main.py sentiment`.It will generate the training split as well generate labels.
  - *Interface script* `python3 tut_1/inference.py [sample_text_file_path]`

# Credits and feedback
These assignment have been supported by [Gaurav Sahu (MMath, UWaterloo)](github.com/demfier). 
