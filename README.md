# Getting and Cleaning Data - Course Project

### Introduction
This README file intends to document the project completed to create a tidy dataset as part of the Getting and Cleaning Data course as part of the Data Science Specialisation on Coursera. 

The aim of this project is to demonstrate my ability to collect, work with and clean a dataset.   

### Files in the repository
The following files are included in this repository:

* README.md - this file
* Codebook.md - a file describing the variables, the data and transformations I performed to the data
* run_analysis.R - the R script which manipulates the raw data and creates the required tidy dataset
* tidy_data.txt - the tidy dataset

### run_analysis.R script details
This script takes the raw data and turns it into the tidy data by following these steps:

1) Importing the raw data into RStudio for the train and test datasets and the features and activity labels datasets

2) Applies appropriate column names to the data frames in the train and test datasets

3) Merges the train and test datasets into a data frame called "combined_data"

4) Subsets "combined_data" such that only the variables Activity Index, Subject and variables where the variable name includes mean or std for (mean and standard deviation). This data frame is called mean_std_data

5) Uses dplyr to group and summarise the data such that the mean of all variables is obtained in a dataset called "ave_var". 

6) Exports "ave_var" as "tidy_data.txt"


### Notes
1) The run_analysis.R script uses the dplyr package. If this is not already installed it can be downloaded from CRAN using the following script: *install.packages("dplyr")*

2) The raw data is downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The unzipped "UCI HAR Dataset" folder from the download link should be saved in the working directory.

3) The tidy_data.txt can be read into R using the following command: *read.table("./filepath/tidy_data.txt")*, replacing "filepath" with the directory of the file. 


