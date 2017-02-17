---
title: "CodeBook.md"
author: "Jorge Balderas"
date: "February 16, 2017"
output: html_document
---

This is a code book which describes the sources, variables, files, transformation and data used to clean up the data.
## Data Source
-Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
-Description of the data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## Data Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
## Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
-tBodyAcc-XYZ 
-tGravityAcc-XYZ 
-tBodyAccJerk-XYZ 
-tBodyGyro-XYZ 
-tBodyGyroJerk-XYZ 
-tBodyAccMag 
-tGravityAccMag 
-tBodyAccJerkMag 
-tBodyGyroMag 
-tBodyGyroJerkMag 
-fBodyAcc-XYZ 
-fBodyAccJerk-XYZ 
-fBodyGyro-XYZ 
-fBodyAccMag 
-fBodyAccJerkMag 
-fBodyGyroMag 
-fBodyGyroJerkMag 
The set of variables that were estimated from these signals are: 
-mean(): Mean value 
-std(): Standard deviation 
-mad(): Median absolute deviation 
-max(): Largest value in array 
-min(): Smallest value in array 
-sma(): Signal magnitude area 
-energy(): Energy measure. Sum of the squares divided by the number of values. 
-iqr(): Interquartile range 
-entropy(): Signal entropy 
-arCoeff(): Autorregresion coefficients with Burg order equal to 4 
-correlation(): correlation coefficient between two signals 
-maxInds(): index of the frequency component with largest magnitude 
-meanFreq(): Weighted average of the frequency components to obtain a mean frequency 
-skewness(): skewness of the frequency domain signal 
-kurtosis(): kurtosis of the frequency domain signal 
-bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window. 
-angle(): Angle between to vectors.
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
-gravityMean 
-tBodyAccMean 
-tBodyAccJerkMean 
-tBodyGyroMean 
-tBodyGyroJerkMean 
## "UCI HAR Dataset" Files
-activitylabels - variable that reads activity_labels.txt file 
-features - variable that reads features.txt file 
-testsubject - variable that reads test/subject_test.txt file
-trainsubject - vaiable that reads train/subject_train.txt file
-xtest - variable that reads test/X_test.txt file
-xtrain - variable that reads train/X_train.txt file 
-ytest - variable that reads test/Y_test.txt file 
-ytrain - variable that reads train/Y_train.txt file 
## Transformations
Merge training and test sets 




#Cols&Names and Activity Labels (read Tables)
features 
activity_labels 

# TEST ( read Tables)
x_test 
y_test 
subject_test

# TRAIN (read Tables)
x_train 
y_train 
subject_train


# mean & Std ( Extracts mean and std for each measure )
names (x_test) 
names (x_train)
extract_features
x_test1= 
x_train1 

# Labels

### Data 
test_data
train_data
finaldata 
finaldataavg


