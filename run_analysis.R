###### Week 4 Assignment ######
rm(list = ls()) ## clear environment

## set up working directories
wd <- "C:/Users/Dev/Google Drive/R/Coursera/3 - Data/Week 4" ## please set your working directory
setwd(wd)

if(!file.exists("./data")) {dir.create("./data")}
## the unzipped "UCI HAR Dataset" folder from the following link should be saved in :
## "./data/
## link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## import data into RStudio
features <-  read.table("./data/UCI HAR Dataset/features.txt")
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

trainpath <- "./data/UCI HAR Dataset/train"
trainx <- read.table(paste(trainpath, "/X_train.txt", sep = ""))
trainy <- read.table(paste(trainpath, "/Y_train.txt", sep = ""))
trainsub <- read.table(paste(trainpath, "/subject_train.txt", sep = ""))

testpath <- "./data/UCI HAR Dataset/test"
testx <- read.table(paste(testpath, "/X_test.txt", sep = ""))
testy <- read.table(paste(testpath, "/Y_test.txt", sep = ""))
testsub <- read.table(paste(testpath, "/subject_test.txt", sep = ""))


## apply names to columns in the various data frames
names(activity_labels) <- c("Activity_index", "Activity")
names(features) <- c("colIndex", "feature")

names(trainsub) <- "Subject"
names(trainy) <- "Activity_index"
names(trainx) <- features$feature

names(testsub) <- "Subject"
names(testy) <- "Activity_index"
names(testx) <- features$feature


## bring subject, activity and feature datasets together, label train and test data respectively
train_data <- cbind(trainsub, 
                    trainx,
                    trainy)

test_data <- cbind(testsub, 
                   testx,
                   testy)



## join activity labels to train and test datasets
train_data_labelled <- merge(train_data, activity_labels, 
                         by.x = "Activity_index", 
                         by.y = "Activity_index", 
                         all.x = TRUE)

test_data_labelled <- merge(test_data, activity_labels, 
                         by.x = "Activity_index", 
                         by.y = "Activity_index", 
                         all.x = TRUE)


## combine the train and test data
combined_data <- rbind(train_data_labelled, test_data_labelled)


## identify columns with mean and std in and subset the combined_data df by these columns. 
combined_data_names <- names(combined_data)
colInd <- c(grep("mean", combined_data_names), grep("std", combined_data_names))
mean_std_data <- combined_data[, c(2, 564, colInd)]


## average of each variable by activity and subject using dplyr package
library(dplyr)

ave_var <- mean_std_data %>% group_by(Subject, Activity) %>%
    summarise_all(mean)


## export tidy data
write.table(ave_var, "./Course Project/Getting-and-Cleaning-Data/tidy_data.txt", row.names = FALSE)

