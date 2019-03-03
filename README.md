# GettingAndCleaningData
This project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. Follwoing summarises the given data and goals for the project.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set.
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Steps to reproduce this project
Set the working directory to the folder/directory where R scripts reside. The data set "UCI HAR Dataset" should be in the same working directory.
Open the R script runAnalysis.R. It contains the necessary steps to create tidy data as well as calls R markdown file "codebook.Rmd" to create codebook.
Run the script runAnalysis.R

# Output of the Project
* Tidy Data set, tidyData.tx
* Codebook, codebook.md
