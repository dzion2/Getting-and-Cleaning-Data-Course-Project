# Getting and Cleaning Data Course Project

In this project I have cleaned the data set obtained from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The cleaning is done inside the ```run_analysis.R``` script.

1. After downloading the data set, the test and training sets were merged.
2. The column names were taken from ```features.txt```.
3. Each record was connected to subjects described in ```subject_[].txt``` files.
4. Activity numbers were replaced with their names from ```activity_labels.txt``` file.
5. Names are changed to more readable format and standardized to PascalCase.

As as result of analysis, two data sets were created:

* ```first_dataset.txt```
* ```second_dataset.txt```

They are explained in more detail in the ```CodeBook.md``` file
