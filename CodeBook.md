# Codebook
There are two data sets created in the analysis. Both of them merge the
train and test set of the original data set. All features are normalized and bounded within [-1,1].

## First data set
### Description
First data set comprises all feature vectors related to mean or standard deviation
of measures with corresponding subject and activity type. 

### Reproducibility
The data set was obtained
by:

1. merging the original train and test set (features and activity) with subjects
2. Choosing activity names according the activity labels file
3. Choosing column names according to the features described in the features file
4. Selecting only columns with explicit "mean()" or "std()" in their name
5. Changing the names of the columns to be more standardized and more readable
    * functions are transformed to only function names, e.g. mean() -> Mean,
     std() -> Std
    * prefix "t" is extended to full name "Time", and prefix "f" to "Frequency"
    * removing typo "BodyBody" and replacing with just "Body"

### Tidy criteria
The received data set is tidy because all columns are independent and their names
are in standardized format. Each letter of a new word is capitalized (so called
PascalCase).

### Access
You can access the data set through ```first_dataset.csv```.

### Variables
* Subject - ID of the subject
* Activity - name of activity (Standing, Sitting, Laying, Walking, WalkingDownstairs, or WalkingUpstairs)
* TimeBodyAccMeanX - Time domain signal representing body acceleration mean along X axis
* TimeBodyAccMeanY - Time domain signal representing body acceleration mean along Y axis
* TimeBodyAccMeanZ - Time domain signal representing body acceleration mean along Z axis
* TimeBodyAccStdX - Time domain signal representing body acceleration standard deviation along X axis
* TimeBodyAccStdY - Time domain signal representing body acceleration standard deviation along Y axis
* TimeBodyAccStdZ - Time domain signal representing body acceleration standard deviation along Z axis
* TimeGravityAccMeanX - Time domain signal representing body gravity acceleration mean along X axis
* TimeGravityAccMeanY - Time domain signal representing body gravity acceleration mean along Y axis
* TimeGravityAccMeanZ - Time domain signal representing body gravity acceleration mean along Z axis
* TimeGravityAccStdX - Time domain signal representing body gravity acceleration standard deviation along X axis
* TimeGravityAccStdY - Time domain signal representing body gravity acceleration standard deviation along Y axis
* TimeGravityAccStdZ - Time domain signal representing body gravity acceleration standard deviation along Z axis
* TimeBodyAccJerkMeanX - Time domain signal representing body acceleration jerk mean along X axis
* TimeBodyAccJerkMeanY - Time domain signal representing body acceleration jerk mean along Y axis
* TimeBodyAccJerkMeanZ - Time domain signal representing body acceleration jerk mean along Z axis
* TimeBodyAccJerkStdX - Time domain signal representing body acceleration jerk standard deviation along X axis
* TimeBodyAccJerkStdY - Time domain signal representing body acceleration jerk standard deviation along Y axis
* TimeBodyAccJerkStdZ - Time domain signal representing body acceleration jerk standard deviation along Z axis
* TimeBodyGyroMeanX - Time domain signal representing body gyroscope mean along X axis
* TimeBodyGyroMeanY - Time domain signal representing body gyroscope mean along Y axis
* TimeBodyGyroMeanZ - Time domain signal representing body gyroscope mean along Z axis
* TimeBodyGyroStdX - Time domain signal representing body gyroscope standard deviation along X axis
* TimeBodyGyroStdY - Time domain signal representing body gyroscope standard deviation along Y axis
* TimeBodyGyroStdZ - Time domain signal representing body gyroscope standard deviation along Z axis
* TimeBodyGyroJerkMeanX - Time domain signal representing body gyroscope jerk mean along X axis
* TimeBodyGyroJerkMeanY - Time domain signal representing body gyroscope jerk mean along Y axis
* TimeBodyGyroJerkMeanZ - Time domain signal representing body gyroscope jerk mean along Z axis
* TimeBodyGyroJerkStdX - Time domain signal representing body gyroscope jerk standard deviation along X axis
* TimeBodyGyroJerkStdY - Time domain signal representing body gyroscope jerk standard deviation along Y axis
* TimeBodyGyroJerkStdZ - Time domain signal representing body gyroscope jerk standard deviation along Z axis
* TimeBodyAccMagMean - Time domain signal representing body acceleration magnitude mean
* TimeBodyAccMagStd - Time domain signal representing body acceleration magnitude standard deviation
* TimeGravityAccMagMean - Time domain signal representing gravity acceleration magnitude mean
* TimeGravityAccMagStd - Time domain signal representing gravity acceleration magnitude standard deviation
* TimeBodyAccJerkMagMean - Time domain signal representing body acceleration jerk magnitude mean
* TimeBodyAccJerkMagStd - Time domain signal representing body acceleration jerk magnitude standard deviation
* TimeBodyGyroMagMean - Time domain signal representing body gyroscope magnitude mean
* TimeBodyGyroMagStd - Time domain signal representing body gyroscope magnitude standard deviation
* TimeBodyGyroJerkMagMean - Time domain signal representing body gyroscope jerk magnitude mean
* TimeBodyGyroJerkMagStd - Time domain signal representing body gyroscope jerk magnitude standard deviation
* FrequencyBodyAccMeanX - Frequency domain signal representing body acceleration mean along X axis
* FrequencyBodyAccMeanY - Frequency domain signal representing body acceleration mean along Y axis
* FrequencyBodyAccMeanZ - Frequency domain signal representing body acceleration mean along Z axis
* FrequencyBodyAccStdX - Frequency domain signal representing body acceleration standard deviation along X axis
* FrequencyBodyAccStdY - Frequency domain signal representing body acceleration standard deviation along Y axis
* FrequencyBodyAccStdZ - Frequency domain signal representing body acceleration standard deviation along Z axis
* FrequencyBodyAccJerkMeanX - Frequency domain signal representing body acceleration jerk mean along X axis
* FrequencyBodyAccJerkMeanY - Frequency domain signal representing body acceleration jerk mean along Y axis
* FrequencyBodyAccJerkMeanZ - Frequency domain signal representing body acceleration jerk mean along Z axis
* FrequencyBodyAccJerkStdX - Frequency domain signal representing body acceleration jerk standard deviation along X axis
* FrequencyBodyAccJerkStdY - Frequency domain signal representing body acceleration jerk standard deviation along Y axis
* FrequencyBodyAccJerkStdZ - Frequency domain signal representing body acceleration jerk standard deviation along Z axis
* FrequencyBodyGyroMeanX - Frequency domain signal representing body gyroscope mean along X axis
* FrequencyBodyGyroMeanY - Frequency domain signal representing body gyroscope mean along Y axis
* FrequencyBodyGyroMeanZ - Frequency domain signal representing body gyroscope mean along Z axis
* FrequencyBodyGyroStdX - Frequency domain signal representing body gyroscope standard deviation along X axis
* FrequencyBodyGyroStdY - Frequency domain signal representing body gyroscope standard deviation along Y axis
* FrequencyBodyGyroStdZ - Frequency domain signal representing body gyroscope standard deviation along Z axis
* FrequencyBodyAccMagMean - Frequency domain signal representing body acceleration magnitude mean
* FrequencyBodyAccMagStd - Frequency domain signal representing body acceleration magnitude standard deviation
* FrequencyBodyAccJerkMagMean - Frequency domain signal representing body acceleration jerk magnitude mean
* FrequencyBodyAccJerkMagStd - Frequency domain signal representing body acceleration jerk magnitude standard deviation
* FrequencyBodyGyroMagMean - Frequency domain signal representing body gyroscope magnitude mean
* FrequencyBodyGyroMagStd - Frequency domain signal representing body gyroscope magnitude standard deviation
* FrequencyBodyGyroJerkMagMean - Frequency domain signal representing body gyroscope jerk magnitude mean
* FrequencyBodyGyroJerkMagStd - Frequency domain signal representing body gyroscope jerk magnitude standard deviation


## Second data set
### Description
Second data set is modification of the first data set. It averages all features for each subject and activity pair.

### Reproducibility
To get the data set you need to follow procedure for the first set and then take average for each unique combination of subject and activity.

### Tidy criteria
Each feature column has Average- prefix to be more readable. The same criteria from data set one apply.

### Access
You can access the data set through ```second_dataset.csv```.

### Variables
* Subject - ID of the subject
* Activity - name of activity (Standing, Sitting, Laying, Walking, WalkingDownstairs, or WalkingUpstairs)
* AverageTimeBodyAccMeanX - Average time domain signal representing body acceleration mean along X axis
* AverageTimeBodyAccMeanY - Average time domain signal representing body acceleration mean along Y axis
* AverageTimeBodyAccMeanZ - Average time domain signal representing body acceleration mean along Z axis
* AverageTimeBodyAccStdX - Average time domain signal representing body acceleration standard deviation along X axis
* AverageTimeBodyAccStdY - Average time domain signal representing body acceleration standard deviation along Y axis
* AverageTimeBodyAccStdZ - Average time domain signal representing body acceleration standard deviation along Z axis
* AverageTimeGravityAccMeanX - Average time domain signal representing body gravity acceleration mean along X axis
* AverageTimeGravityAccMeanY - Average time domain signal representing body gravity acceleration mean along Y axis
* AverageTimeGravityAccMeanZ - Average time domain signal representing body gravity acceleration mean along Z axis
* AverageTimeGravityAccStdX - Average time domain signal representing body gravity acceleration standard deviation along X axis
* AverageTimeGravityAccStdY - Average time domain signal representing body gravity acceleration standard deviation along Y axis
* AverageTimeGravityAccStdZ - Average time domain signal representing body gravity acceleration standard deviation along Z axis
* AverageTimeBodyAccJerkMeanX - Average time domain signal representing body acceleration jerk mean along X axis
* AverageTimeBodyAccJerkMeanY - Average time domain signal representing body acceleration jerk mean along Y axis
* AverageTimeBodyAccJerkMeanZ - Average time domain signal representing body acceleration jerk mean along Z axis
* AverageTimeBodyAccJerkStdX - Average time domain signal representing body acceleration jerk standard deviation along X axis
* AverageTimeBodyAccJerkStdY - Average time domain signal representing body acceleration jerk standard deviation along Y axis
* AverageTimeBodyAccJerkStdZ - Average time domain signal representing body acceleration jerk standard deviation along Z axis
* AverageTimeBodyGyroMeanX - Average time domain signal representing body gyroscope mean along X axis
* AverageTimeBodyGyroMeanY - Average time domain signal representing body gyroscope mean along Y axis
* AverageTimeBodyGyroMeanZ - Average time domain signal representing body gyroscope mean along Z axis
* AverageTimeBodyGyroStdX - Average time domain signal representing body gyroscope standard deviation along X axis
* AverageTimeBodyGyroStdY - Average time domain signal representing body gyroscope standard deviation along Y axis
* AverageTimeBodyGyroStdZ - Average time domain signal representing body gyroscope standard deviation along Z axis
* AverageTimeBodyGyroJerkMeanX - Average time domain signal representing body gyroscope jerk mean along X axis
* AverageTimeBodyGyroJerkMeanY - Average time domain signal representing body gyroscope jerk mean along Y axis
* AverageTimeBodyGyroJerkMeanZ - Average time domain signal representing body gyroscope jerk mean along Z axis
* AverageTimeBodyGyroJerkStdX - Average time domain signal representing body gyroscope jerk standard deviation along X axis
* AverageTimeBodyGyroJerkStdY - Average time domain signal representing body gyroscope jerk standard deviation along Y axis
* AverageTimeBodyGyroJerkStdZ - Average time domain signal representing body gyroscope jerk standard deviation along Z axis
* AverageTimeBodyAccMagMean - Average time domain signal representing body acceleration magnitude mean
* AverageTimeBodyAccMagStd - Average time domain signal representing body acceleration magnitude standard deviation
* AverageTimeGravityAccMagMean - Average time domain signal representing gravity acceleration magnitude mean
* AverageTimeGravityAccMagStd - Average time domain signal representing gravity acceleration magnitude standard deviation
* AverageTimeBodyAccJerkMagMean - Average time domain signal representing body acceleration jerk magnitude mean
* AverageTimeBodyAccJerkMagStd - Average time domain signal representing body acceleration jerk magnitude standard deviation
* AverageTimeBodyGyroMagMean - Average time domain signal representing body gyroscope magnitude mean
* AverageTimeBodyGyroMagStd - Average time domain signal representing body gyroscope magnitude standard deviation
* AverageTimeBodyGyroJerkMagMean - Average time domain signal representing body gyroscope jerk magnitude mean
* AverageTimeBodyGyroJerkMagStd - Average time domain signal representing body gyroscope jerk magnitude standard deviation
* AverageFrequencyBodyAccMeanX - Average frequency domain signal representing body acceleration mean along X axis
* AverageFrequencyBodyAccMeanY - Average frequency domain signal representing body acceleration mean along Y axis
* AverageFrequencyBodyAccMeanZ - Average frequency domain signal representing body acceleration mean along Z axis
* AverageFrequencyBodyAccStdX - Average frequency domain signal representing body acceleration standard deviation along X axis
* AverageFrequencyBodyAccStdY - Average frequency domain signal representing body acceleration standard deviation along Y axis
* AverageFrequencyBodyAccStdZ - Average frequency domain signal representing body acceleration standard deviation along Z axis
* AverageFrequencyBodyAccJerkMeanX - Average frequency domain signal representing body acceleration jerk mean along X axis
* AverageFrequencyBodyAccJerkMeanY - Average frequency domain signal representing body acceleration jerk mean along Y axis
* AverageFrequencyBodyAccJerkMeanZ - Average frequency domain signal representing body acceleration jerk mean along Z axis
* AverageFrequencyBodyAccJerkStdX - Average frequency domain signal representing body acceleration jerk standard deviation along X axis
* AverageFrequencyBodyAccJerkStdY - Average frequency domain signal representing body acceleration jerk standard deviation along Y axis
* AverageFrequencyBodyAccJerkStdZ - Average frequency domain signal representing body acceleration jerk standard deviation along Z axis
* AverageFrequencyBodyGyroMeanX - Average frequency domain signal representing body gyroscope mean along X axis
* AverageFrequencyBodyGyroMeanY - Average frequency domain signal representing body gyroscope mean along Y axis
* AverageFrequencyBodyGyroMeanZ - Average frequency domain signal representing body gyroscope mean along Z axis
* AverageFrequencyBodyGyroStdX - Average frequency domain signal representing body gyroscope standard deviation along X axis
* AverageFrequencyBodyGyroStdY - Average frequency domain signal representing body gyroscope standard deviation along Y axis
* AverageFrequencyBodyGyroStdZ - Average frequency domain signal representing body gyroscope standard deviation along Z axis
* AverageFrequencyBodyAccMagMean - Average frequency domain signal representing body acceleration magnitude mean
* AverageFrequencyBodyAccMagStd - Average frequency domain signal representing body acceleration magnitude standard deviation
* AverageFrequencyBodyAccJerkMagMean - Average frequency domain signal representing body acceleration jerk magnitude mean
* AverageFrequencyBodyAccJerkMagStd - Average frequency domain signal representing body acceleration jerk magnitude standard deviation
* AverageFrequencyBodyGyroMagMean - Average frequency domain signal representing body gyroscope magnitude mean
* AverageFrequencyBodyGyroMagStd - Average frequency domain signal representing body gyroscope magnitude standard deviation
* AverageFrequencyBodyGyroJerkMagMean - Average frequency domain signal representing body gyroscope jerk magnitude mean
* AverageFrequencyBodyGyroJerkMagStd - Average frequency domain signal representing body gyroscope jerk magnitude standard deviation
