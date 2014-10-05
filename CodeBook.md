# Code Book for Getting and Cleaning Data Course Project

## Citation
The data described by this code book originated in a data set called "Human Activity Recognition Using Smartphones Dataset, Version 1.0" created by the following team:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  

## Study Design
The team at Smartlab gathered a set of 30 subjects and recorded a large set of accelerometer/gyroscope measurements from a Samsung Galaxy S II attached to their waist while performing a variety of physical activities. They recorded the subject and the activity, and correlated this via video with the measurements coming from the phone to form a large dataset. Their initial purpose was to offer this data set in two components: a training set and a test set. The former could be used to train a machine learning model to categorize physical activity based upon measurements from the phone, then test that model with the test data set.

The data presented here originated from the Smartlab data, with the following processing steps generating the file 'final_data.txt':

* Ingest the training, test, and label data
* Align the training and test data with the corresponding subject number and activity references
* Combine the training and test data sets together to form one data set
* Subset the data set to only those variables used to label the subject or activity, and anything that provides a mean or standard deviation
* Convert the activity label (provided as a number) to a factor and translate to the descriptive activity name
* Rename the variable to be more descriptive and free from non-alpha numeric characters
* Convert the subject label (provided as a number) to a factor
* Melt the data, and recast to summarize the data to just a single measure for each subject, each activity the subject undertook, and the mean of each measurement variable - this results in 180 observations for 79 measurement variables (plus two variables tracking the subject and activity)

## Code Book
The processed data is comprised of the following variables:

Variable Name

Variable Name  | Position | Class | Description |
:------------- | :------: | :---: | :---------- |
Subject | 1 | Factor | Reference to the volunteer (number 1 through 30) whose movement generated the data |
Actvity | 2 | Factor | The activity the subject performed; 1 of 6 values - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING |
TBodyAccMeanX | 3 | Numeric | Mean for all observations for each subject, in each position, of the mean accelerometer measure of the body in the X-direction as measured through time calculations |
TBodyAccMeanY | 4 | Numeric | Mean for all observations for each subject, in each position, of the mean accelerometer measure of the body in the Y-direction as measured through time calculations |
TBodyAccMeanZ | 5 | Numeric | Mean for all observations for each subject, in each position, of the mean accelerometer measure of the body in the Z-direction as measured through time calculations |
TBodyAccSDX | 6 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of accelerometer measure of the body in the X-direction as measured through time calculations |
TBodyAccSDY | 7 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of accelerometer measure of the body in the Y-direction as measured through time calculations |
TBodyAccSDZ | 8 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of accelerometer measure of the body in the Z-direction as measured through time calculations |
GravityAccMeanX | 9 | Numeric | Mean for all observations for each subject, in each position, of the mean accelerometer measure due to gravity in the X-direction as measured through time calculations |
GravityAccMeanY | 10 | Numeric | Mean for all observations for each subject, in each position, of the mean accelerometer measure due to gravity in the Y-direction as measured through time calculations |
GravityAccMeanZ | 11 | Numeric | Mean for all observations for each subject, in each position, of the mean accelerometer measure due to gravity in the Z-direction as measured through time calculations |
GravityAccSDX | 12 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of accelerometer measure due to gravity in the X-direction as measured through time calculations |
GravityAccSDY | 13 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of accelerometer measure due to gravity in the Y-direction as measured through time calculations |
GravityAccSDZ | 14 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of accelerometer measure due to gravity in the Z-direction as measured through time calculations |
TBodyAccJerkMeanX | 15 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk accelerometer measure of the body in the X-direction as measured through time calculations |
TBodyAccJerkMeanY | 16 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk accelerometer measure of the body in the Y-direction as measured through time calculations |
TBodyAccJerkMeanZ | 17 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk accelerometer measure of the body in the Z-direction as measured through time calculations |
TBodyAccJerkSDX1 | 18 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of jerk accelerometer measure of the body in the X-direction as measured through time calculations |
TBodyAccJerkSDY | 19 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of jerk accelerometer measure of the body in the Y-direction as measured through time calculations |
TBodyAccJerkSDZ | 20 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of jerk accelerometer measure of the body in the Z-direction as measured through time calculations |
TBodyGyroMeanX | 21 | Numeric | Mean for all observations for each subject, in each position, of the mean gyroscope measure of the body in the X-direction as measured through time calculations |
TBodyGyroMeanY | 22 | Numeric | Mean for all observations for each subject, in each position, of the mean gyroscope measure of the body in the Y-direction as measured through time calculations |
TBodyGyroMeanZ | 23 | Numeric | Mean for all observations for each subject, in each position, of the mean gyroscope measure of the body in the Z-direction as measured through time calculations |
TBodyGyroSDX1 | 24 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of gyroscope measure of the body in the X-direction as measured through time calculations |
TBodyGyroSDY | 25 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of gyroscope measure of the body in the Y-direction as measured through time calculations |
TBodyGyroSDZ | 26 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of gyroscope measure of the body in the Z-direction as measured through time calculations |
BodyGyroJerkMeanX | 27 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk gyroscope measure of the body in the X-direction as measured through time calculations |
BodyGyroJerkMeanY | 28 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk gyroscope measure of the body in the Y-direction as measured through time calculations |
BodyGyroJerkMeanZ | 29 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk gyroscope measure of the body in the Z-direction as measured through time calculations |
BodyGyroJerkSDX | 30 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of jerk gyroscope measure of the body in the X-direction as measured through time calculations |
BodyGyroJerkSDY | 31 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of jerk gyroscope measure of the body in the Y-direction as measured through time calculations |
BodyGyroJerkSDZ | 32 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of jerk gyroscope measure of the body in the Z-direction as measured through time calculations |
TBodyAccMagMean | 33 | Numeric | Mean for all observations for each subject, in each position, of the mean magnitude accelerometer measure of the body as measured through time calculations |
TBodyAccMagSD | 34 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation magnitude accelerometer measure of the body as measured through time calculations |
GravityAccMagMean | 35 | Numeric | Mean for all observations for each subject, in each position, of the mean magnitude accelerometer measure due to gravity as measured through time calculations |
GravityAccMagSD | 36 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation magnitude accelerometer measure due to gravity as measured through time calculations |
BodyAccJerkMagMean | 37 | Numeric | Mean for all observations for each subject, in each position, of the mean magnitude jerk accelerometer measure due to gravity as measured through time calculations |
BodyAccJerkMagSD | 38 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation magnitude jerk accelerometer measure due to gravity as measured through time calculations |
BodyGyroMagMean | 39 | Numeric | Mean for all observations for each subject, in each position, of the mean magnitude gyroscope measure due to gravity as measured through time calculations |
BodyGyroMagSD | 40 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation magnitude gyroscope measure due to gravity as measured through time calculations |
BodyGyroJerkMagMean | 41 | Numeric | Mean for all observations for each subject, in each position, of the mean magnitude jerk gyroscope measure due to gravity as measured through time calculations |
BodyGyroJerkMagSD | 42 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation magnitude jerk gyroscope measure due to gravity as measured through time calculations |
FBodyAccMeanX | 43 | Numeric | Mean for all observations for each subject, in each position, of the mean accelerometer measure of the body in the X-direction as measured through Fast Fourier Transform calculations |
FBodyAccMeanY | 44 | Numeric | Mean for all observations for each subject, in each position, of the mean accelerometer measure of the body in the Y-direction as measured through Fast Fourier Transform calculations |
FBodyAccMeanZ | 45 | Numeric | Mean for all observations for each subject, in each position, of the mean accelerometer measure of the body in the Z-direction as measured through Fast Fourier Transform calculations |
FBodyAccSDX | 46 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of accelerometer measure of the body in the X-direction as measured through Fast Fourier Transform calculations |
FBodyAccSDY | 47 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of accelerometer measure of the body in the Y-direction as measured through Fast Fourier Transform calculations |
FBodyAccSDZ | 48 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of accelerometer measure of the body in the Z-direction as measured through Fast Fourier Transform calculations |
FBodyAccJerkMeanX | 49 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk accelerometer measure of the body in the X-direction as measured through Fast Fourier Transform calculations |
FBodyAccJerkMeanY | 50 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk accelerometer measure of the body in the Y-direction as measured through Fast Fourier Transform calculations |
FBodyAccJerkMeanZ | 51 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk accelerometer measure of the body in the Z-direction as measured through Fast Fourier Transform calculations |
FBodyAccJerkSDX | 52 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of jerk accelerometer measure of the body in the X-direction as measured through Fast Fourier Transform calculations |
FBodyAccJerkSDY | 53 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of jerk accelerometer measure of the body in the Y-direction as measured through Fast Fourier Transform calculations |
FBodyAccJerkSDZ | 54 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of jerk accelerometer measure of the body in the Z-direction as measured through Fast Fourier Transform calculations |
BodyAccJerkMeanFreqX | 55 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk accelerometer frequency measure of the body in the X-direction as measured through Fast Fourier Transform calculations |
BodyAccJerkMeanFreqY | 56 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk accelerometer frequency measure of the body in the Y-direction as measured through Fast Fourier Transform calculations |
BodyAccJerkMeanFreqZ | 57 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk accelerometer frequency measure of the body in the Z-direction as measured through Fast Fourier Transform calculations |
FBodyGyroMeanX | 58 | Numeric | Mean for all observations for each subject, in each position, of the mean gyroscope measure of the body in the X-direction as measured through Fast Fourier Transform calculations |
FBodyGyroMeanY | 59 | Numeric | Mean for all observations for each subject, in each position, of the mean gyroscope measure of the body in the Y-direction as measured through Fast Fourier Transform calculations |
FBodyGyroMeanZ | 60 | Numeric | Mean for all observations for each subject, in each position, of the mean gyroscope measure of the body in the Z-direction as measured through Fast Fourier Transform calculations |
FBodyGyroSDX | 61 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of gyroscope measure of the body in the X-direction as measured through Fast Fourier Transform calculations |
FBodyGyroSDY | 62 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of gyroscope measure of the body in the Y-direction as measured through Fast Fourier Transform calculations |
FBodyGyroSDZ | 63 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation of gyroscope measure of the body in the Z-direction as measured through Fast Fourier Transform calculations |
BodyGyroMeanFreq | 64 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk gyroscope frequency measure of the body in the X-direction as measured through Fast Fourier Transform calculations |
BodyGyroMeanFreq | 65 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk gyroscope frequency measure of the body in the Y-direction as measured through Fast Fourier Transform calculations |
BodyGyroMeanFreq | 66 | Numeric | Mean for all observations for each subject, in each position, of the mean jerk gyroscope frequency measure of the body in the Z-direction as measured through Fast Fourier Transform calculations |
FBodyAccMagMean | 67 | Numeric | Mean for all observations for each subject, in each position, of the mean magnitude accelerometer measure of the body as measured through Fast Fourier Transform calculations |
FBodyAccMagSD | 68 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation magnitude accelerometer measure of the body as measured through Fast Fourier Transform calculations |
BodyBodyAccJerkMagMean | 69 | Numeric | Mean for all observations for each subject, in each position, of the mean magnitude accelerometer measure due to gravity as measured through Fast Fourier Transform calculations |
BodyBodyAccJerkMagSD | 70 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation magnitude accelerometer measure due to gravity as measured through Fast Fourier Transform calculations |
BodyBodyGyroMagMean | 71 | Numeric | Mean for all observations for each subject, in each position, of the mean magnitude jerk accelerometer measure due to gravity as measured through Fast Fourier Transform calculations |
BodyBodyGyroMagSD | 72 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation magnitude jerk accelerometer measure due to gravity as measured through Fast Fourier Transform calculations |
BodyBodyGyroJerkMagMean | 73 | Numeric | Mean for all observations for each subject, in each position, of the mean magnitude gyroscope measure due to gravity as measured through Fast Fourier Transform calculations |
BodyBodyGyroJerkMagSD | 74 | Numeric | Mean for all observations for each subject, in each position, of the standard deviation magnitude gyroscope measure due to gravity as measured through Fast Fourier Transform calculations |
AngleBodyAccMeanGravity | 75 | Numeric | Mean for all observations for each subject, in each position, of the angle of the mean accelerometer measure due to gravity as measured through time calculations |
AngleBodyAccJerkMeanGravityMean | 76 | Numeric | Mean for all observations for each subject, in each position, of the angle of the mean accelerometer measure due to gravity, based on gravity mean, as measured through time calculations |
AngleBodyGyroMeanGravityMean | 77 | Numeric | Mean for all observations for each subject, in each position, of the angle of the mean gyroscope measure due to gravity as measured through time calculations |
AngleBodyGyroJerkMeanGravityMean | 78 | Numeric | Mean for all observations for each subject, in each position, of the angle of the mean gyroscope measure due to gravity, based on gravity mean, as measured through time calculations |
AngleXGravityMean | 79 | Numeric | Mean for all observations for each subject, in each position, of the angle measure in the X-direction based on gravity mean |
AngleYGravityMean | 80 | Numeric | Mean for all observations for each subject, in each position, of the angle measure in the Y-direction based on gravity mean |
AngleZGravityMean | 81 | Numeric | Mean for all observations for each subject, in each position, of the angle measure in the Z-direction based on gravity mean |

