CourseProject_WearableComputing
===============================

This repo constitutes the participant's submission of the Course Project for the 'Getting and Cleaning Data' MOOC in the Johns Hopkins Data Science Specialization Series

What is the Script Setup

The run_analysis.R script included in this repo assumes that you have downloaded the UCI HAR Dataset, unpacked it, and changed your working directory to be the 'UCI HAR Dataset' directory.

What Does the Script Do

In the first step, the script merges the two accelerometer data sets (training and test data) collected by a Samsung Galaxy S smartphone. The combined data set has 561 variables (columns) and 10299 observations (rows). The training data set accounts for 70% of the observations, and the test data for the other 30%. We preserve the origin of the measurements by appending a column to the front of the combined data set with either a 'training' or 'test' category label. In Step 2, we extract only the data columns that represent a mean or standard deviation measurement variable. This reduces the data set to 66 variables (or columns). In Step 3, we substitute descriptive words for the six Activity codes in the data set and in Step 4 we describe how to tidy up the column names. In Step 5, we recast the data into a 66 row by 12 column table. The rows now represent each of the 66 mean or standard deviation variables, while the columns contain the mean values for each of the 12 combinations of Category and Activity.

What Does the Script Produce

This script produces a text file called meantables.txt (also included in this repo) that is a file 67 lines long. The first line contains the header information. Each additional line (or row) represents one measurement variable name and 12 mean values, one for each of the Category ('training' or 'test') and Activity ('standing','walking', 'walkup', 'walkdown', 'sitting', or 'laying') combinations.

What Do the Table Variables Mean

A Codebook describing the tidy set is included in this repo as a separate file called Codebook.md


