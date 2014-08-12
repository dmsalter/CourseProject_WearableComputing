CourseProject_WearableComputing
===============================

This repo constitutes the participant's submission of the Course Project for the 'Getting and Cleaning Data' MOOC in the Johns Hopkins Data Science Specialization Series

What is the Setup

The run_analysis.R script included in this repo assumes that you have downloaded the UCI HAR Dataset, unpacked it, and changed your working directory to be the 'UCI HAR Dataset' directory.

What Does the Script Do

In the first step, the script merges the two accelerometer data sets (training and test data) collected by a Samsung Galaxy S smartphone. The combined data set has 561 variables (columns) and 10299 observations (rows). Then we append two columns to the front of the combined data set, the first with the subject ID number and the second with the activity code. In Step 2, we extract only the measurement data columns that represent a mean or standard deviation measurement variable. This reduces the data set to 66 variables (or columns) as the rest of the measurements are dropped. In Step 3, we substitute descriptive words for the six Activity codes in the data set and in Step 4 we describe how to tidy up the column names for each measurement. In Step 5, we recast the data into a 66 row by 180 column table. The rows now represent each of the 66 mean or standard deviation measurement variables, while the columns contain the mean values for each of the 180 combinations of Subject and Activity.

What Does the Script Produce

This script produces a text file called meantables.txt (also included in this repo) that is a file 67 lines long. The first line contains the header information. Each additional line (or row) represents one of the 66 measurement variables plus 180 mean values, one mean for each of the 180 Subject and Activity combinations.

What Do the Table Variables Mean

A Codebook describing the tidy set is included in this repo as a separate file called Codebook.md, where you must scroll down to see the general codebook description format of: variable name, variable field width, variable definition, and range of values.


