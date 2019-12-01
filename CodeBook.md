# Getting and Cleaning Data - Course Project


This CodeBook describes the variables in the "tidy_data.txt" file. 

### Source Data
The raw data for this project is sourced from the Human Activity Recognition Using Smartphones Data Set, which is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Details of the experiments carried out can be found the in the README.txt file supplied with the original dataset. 

The original dataset also included a file called features_info.txt. This file outlines the measurements recorded for each observation. Please refer to this file to understand the variables outlined below in the Data Fields sections of the CodeBook. 

Note - only variables with mean or std in the variable name have been kept in the tidy dataset, in line with the requirements of this project. 


### Data Fields in tidy_data.txt

* **Subject** - Integer variable taking values between 1 - 30. This is the identifier for each subject in the experiment. 


* **Activity** - Factor variable detailing the activity performed by the subject. There are six possible activities:
    + Walking
    + Walking Upstairs
    + Walking Downstairs
    + Laying
    + Sitting 
    + Standing
    
    
* **Mean of measurements** - The remaining variables in this dataset are the mean values of the observed variables for each Subject and Activity. All variables are numeric and have been normalised, so values are between -1 and +1. Only mean and standard deviation variables were required, so all other variable types have been removed. Variables with "meanFreq" in the variable name have been included in the dataset. Below is a full list of the variables included:
    + tBodyAcc-mean()-X  
    + tBodyAcc-mean()-Y
    + tBodyAcc-mean()-Z
    + tGravityAcc-mean()-X
    + tGravityAcc-mean()-Y
    + tGravityAcc-mean()-Z
    + tBodyAccJerk-mean()-X
    + tBodyAccJerk-mean()-Y
    + tBodyAccJerk-mean()-Z
    + tBodyGyro-mean()-X
    + tBodyGyro-mean()-Y
    + tBodyGyro-mean()-Z
    + tBodyGyroJerk-mean()-X
    + tBodyGyroJerk-mean()-Y
    + tBodyGyroJerk-mean()-Z
    + tBodyAccMag-mean()
    + tGravityAccMag-mean()
    + tBodyAccJerkMag-mean()
    + tBodyGyroMag-mean()
    + tBodyGyroJerkMag-mean()
    + fBodyAcc-mean()-X
    + fBodyAcc-mean()-Y
    + fBodyAcc-mean()-Z
    + fBodyAcc-meanFreq()-X
    + fBodyAcc-meanFreq()-Y
    + fBodyAcc-meanFreq()-Z
    + fBodyAccJerk-mean()-X
    + fBodyAccJerk-mean()-Y
    + fBodyAccJerk-mean()-Z
    + fBodyAccJerk-meanFreq()-X
    + fBodyAccJerk-meanFreq()-Y
    + fBodyAccJerk-meanFreq()-Z
    + fBodyGyro-mean()-X
    + fBodyGyro-mean()-Y
    + fBodyGyro-mean()-Z
    + fBodyGyro-meanFreq()-X
    + fBodyGyro-meanFreq()-Y
    + fBodyGyro-meanFreq()-Z
    + fBodyAccMag-mean()
    + fBodyAccMag-meanFreq()
    + fBodyBodyAccJerkMag-mean()
    + fBodyBodyAccJerkMag-meanFreq()
    + fBodyBodyGyroMag-mean()
    + fBodyBodyGyroMag-meanFreq()
    + fBodyBodyGyroJerkMag-mean()
    + fBodyBodyGyroJerkMag-meanFreq()
    + tBodyAcc-std()-X
    + tBodyAcc-std()-Y
    + tBodyAcc-std()-Z
    + tGravityAcc-std()-X
    + tGravityAcc-std()-Y
    + tGravityAcc-std()-Z
    + tBodyAccJerk-std()-X
    + tBodyAccJerk-std()-Y
    + tBodyAccJerk-std()-Z
    + tBodyGyro-std()-X
    + tBodyGyro-std()-Y
    + tBodyGyro-std()-Z
    + tBodyGyroJerk-std()-X
    + tBodyGyroJerk-std()-Y
    + tBodyGyroJerk-std()-Z
    + tBodyAccMag-std()
    + tGravityAccMag-std()
    + tBodyAccJerkMag-std()
    + tBodyGyroMag-std()
    + tBodyGyroJerkMag-std()
    + fBodyAcc-std()-X
    + fBodyAcc-std()-Y
    + fBodyAcc-std()-Z
    + fBodyAccJerk-std()-X
    + fBodyAccJerk-std()-Y
    + fBodyAccJerk-std()-Z
    + fBodyGyro-std()-X
    + fBodyGyro-std()-Y
    + fBodyGyro-std()-Z
    + fBodyAccMag-std()
    + fBodyBodyAccJerkMag-std()
    + fBodyBodyGyroMag-std()
    + fBodyBodyGyroJerkMag-std()
