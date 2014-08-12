Version 2.0
README file edited by D.M. Salter as part of an online Coursera Course Project.
CODEBOOK variable details are appended below background description of data.
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
Background Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- An identifier of the subject who carried out the experiment.
- An activity label. 
- A 66-feature vector with mean or standard deviation measurement variables. 

The dataset includes the following files:
=========================================

- 'README.md': Explains what is included in the repo

- 'Codebook.txt': Shows information about the measurement variables and data set.

- 'meanstable.txt': Each row identifies a measurement variable and is a 66 element vector. Each of the 180 columns identifies a Subject and Activity pair. The table values are means that range from -1 to 1.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


==================================================================


	tBodyAcc-mean-X			16
		Mean of Time Domain Body Accelerometer Raw Signal along X-axis
		-1..1	.Decimal number

	tBodyAcc-mean-Y			16
		Mean of Time Domain Body Accelerometer Raw Signal along Y-axis
		-1..1	.Decimal number

	tBodyAcc-mean-Z			16
		Mean of Time Domain Body Accelerometer Raw Signal along Z-axis
		-1..1	.Decimal number

	tBodyAcc-std-X			16
		Standard Deviation of Time Domain Body Accelerometer Raw Signal along X-axis
		-1..1	.Decimal number

	tBodyAcc-std-Y			16
		Standard Deviation of Time Domain Body Accelerometer Raw Signal along Y-axis
		-1..1	.Decimal number

	tBodyAcc-std-Z			16
		Standard Deviation of Time Domain Body Accelerometer Raw Signal along Z-axis
		-1..1	.Decimal number

	tGravityAcc-mean-X		16
		Mean of Time Domain Gravity Acceleration Signal along X-axis
		-1..1	.Decimal number

	tGravityAcc-mean-Y		16
		Mean of Time Domain Gravity Acceleration Signal along Y-axis
		-1..1	.Decimal number

	tGravityAcc-mean-Z		16
		Mean of Time Domain Gravity Acceleration Signal along Z-axis
		-1..1	.Decimal number

	tGravityAcc-std-X		16
		Standard Deviation of Time Domain Gravity Acceleration Signal along X-axis
		-1..1	.Decimal number

	tGravityAcc-std-Y		16
		Standard Deviation of Time Domain Gravity Acceleration Signal along Y-axis
		-1..1	.Decimal number

	tGravityAcc-std-Z		16
		Standard Deviation of Time Domain Gravity Acceleration Signal along Z-axis
		-1..1	.Decimal number

	tBodyAccJerk-mean-X		16
		Mean of Time Domain Body Linear Acceleration along X-axis
		-1..1	.Decimal number

	tBodyAccJerk-mean-Y		16
		Mean of Time Domain Body Linear Acceleration along Y-axis
		-1..1	.Decimal number

	tBodyAccJerk-mean-Z		16
		Mean of Time Domain Body Linear Acceleration along Z-axis
		-1..1	.Decimal number

	tBodyAccJerk-std-X		16
		Standard Deviation of Time Domain Body Linear Acceleration along X-axis
		-1..1	.Decimal number

	tBodyAccJerk-std-Y		16
		Standard Deviation of Time Domain Body Linear Acceleration along Y-axis
		-1..1	.Decimal number

        tBodyAccJerk-std-Z		16
		Standard Deviation of Time Domain Body Linear Acceleration along Z-axis
		-1..1	.Decimal number

	tBodyGyro-mean-X		16
		Mean of Time Domain Body Gyroscope along X-axis
		-1..1	.Decimal number

	tBodyGyro-mean-Y		16
		Mean of Time Domain Body Gyroscope along Y-axis
		-1..1	.Decimal number

	tBodyGyro-mean-Z		16
		Mean of Time Domain Body Gyroscope along Z-axis
		-1..1	.Decimal number

	tBodyGyro-std-X			16
		Standard Deviation of Time Domain Body Gyroscope along X-axis
		-1..1	.Decimal number

	tBodyGyro-std-Y			16
		Standard Deviation of Time Domain Body Gyroscope along Y-axis
		-1..1	.Decimal number

	tBodyGyro-std-Z			16
		Standard Deviation of Time Domain Body Angular Velocity along Z-axis
		-1..1	.Decimal number

	tBodyGyroJerk-mean-X		16
		Mean of Time Domain Body Angular Velocity along X-axis
		-1..1	.Decimal number

	tBodyGyroJerk-mean-Y		16
		Mean of Time Domain Body Angular Velocity along Y-axis
		-1..1	.Decimal number

	tBodyGyroJerk-mean-Z		16
		Mean of Time Domain Body Angular Velocity along Z-axis
		-1..1	.Decimal number

	tBodyGyroJerk-std-X 		16
		Standard Deviation of Time Domain Body Angular Velocity along X-axis
		-1..1	.Decimal number

	tBodyGyroJerk-std-Y 		16
		Standard Deviation of Time Domain Body Angular Velocity along Y-axis
		-1..1	.Decimal number

	tBodyGyroJerk-std-Z 		16
		Standard Deviation of Time Domain Body Angular Velocity along Z-axis
		-1..1	.Decimal number

	tBodyAccMag-mean    		16
		Mean of Time Domain Body Acceleration Magnitude
		-1..1	.Decimal number

	tBodyAccMag-std     		16
		Standard Deviation of Time Domain Body Acceleration Magnitude
		-1..1	.Decimal number

	tGravityAccMag-mean 		16
		Mean of Time Domain Gravity Acceleration Magnitude
		-1..1	.Decimal number

	tGravityAccMag-std  		16
		Standard Deviation of Time Domain Gravity Acceleration Magnitude
		-1..1	.Decimal number

	tBodyAccJerkMag-mean		16
		Mean of Time Domain Body Linear Acceleration Magnitude
		-1..1	.Decimal number

	tBodyAccJerkMag-std 		16
		Standard Deviation of Time Domain Body Linear Acceleration Magnitude
		-1..1	.Decimal number

	tBodyGyroMag-mean   		16
		Mean of Time Domain Body Gyroscope Acceleration Magnitude
		-1..1	.Decimal number

	tBodyGyroMag-std    		16
		Standard Deviation of Time Domain Body Gyroscope Acceleration Magnitude
		-1..1	.Decimal number

	tBodyGyroJerkMag-mean		16
		Mean of Time Domain Body Angular Velocity Magnitude
		-1..1	.Decimal number

	tBodyGyroJerkMag-std		16
		Standard Deviation of Time Domain Body Angular Velocity Magnitude
		-1..1	.Decimal number

	fBodyAcc-mean-X     		16
		Mean of Frequency Domain Body Accelerometer along X-axis
		-1..1	.Decimal number

	fBodyAcc-mean-Y     		16
		Mean of Frequency Domain Body Accelerometer along Y-axis
		-1..1	.Decimal number

	fBodyAcc-mean-Z     		16
		Mean of Frequency Domain Body Accelerometer along Z-axis
		-1..1	.Decimal number

	fBodyAcc-std-X	    		16
		Standard Deviation of Frequency Domain Body Accelerometer along X-axis
		-1..1	.Decimal number

	fBodyAcc-std-Y	    		16
		Standard Deviation of Frequency Domain Body Accelerometer along Y-axis
		-1..1	.Decimal number

	fBodyAcc-std-Z	    		16
		Standard Deviation of Frequency Domain Body Accelerometer along Z-axis
		-1..1	.Decimal number

	fBodyAccJerk-mean-X 		16
		Mean of Frequency Domain Body Linear Acceleration along X-axis
		-1..1	.Decimal number

	fBodyAccJerk-mean-Y 		16
		Mean of Frequency Domain Body Linear Acceleration along Y-axis
		-1..1	.Decimal number

	fBodyAccJerk-mean-Z 		16
		Mean of Frequency Domain Body Linear Acceleration along Z-axis
		-1..1	.Decimal number

	fBodyAccJerk-std-X	        16
		Standard Deviation of Frequency Domain Body Linear Acceleration along X-axis
		-1..1	.Decimal number

	fBodyAccJerk-std-Y	        16
		Standard Deviation of Frequency Domain Body Linear Acceleration along Y-axis
		-1..1	.Decimal number

	fBodyAccJerk-std-Z	        16
		Standard Deviation of Frequency Domain Body Linear Acceleration along Z-axis
		-1..1	.Decimal number

	fBodyGyro-mean-X	        16
		Mean of Frequency Domain Body Gyroscope along X-axis
		-1..1	.Decimal number

	fBodyGyro-mean-Y	        16
		Mean of Frequency Domain Body Gyroscope along Y-axis
		-1..1	.Decimal number

	fBodyGyro-mean-Z	        16
		Mean of Frequency Domain Body Gyroscope along Z-axis
		-1..1	.Decimal number

	fBodyGyro-std-X			16
		Standard Deviation of Frequency Domain Body Gyroscope along X-axis
		-1..1	.Decimal number

	fBodyGyro-std-Y			16
		Standard Deviation of Frequency Domain Body Gyroscope along Y-axis
		-1..1	.Decimal number

	fBodyGyro-std-Z			16
		Standard Deviation of Frequency Domain Body Gyroscope along Z-axis
		-1..1	.Decimal number

	fBodyAccMag-mean		16
		Mean of Frequency Domain Body Accelerometer Magnitude
		-1..1	.Decimal number

	fBodyAccMag-std			16
		Standard Deviation of Frequency Domain Body Accelerometer Magnitude
		-1..1	.Decimal number

	fBodyBodyAccJerkMag-mean	16
		Mean of Frequency Domain Body Body Linear Acceleration Magnitude
		-1..1	.Decimal number

	fBodyBodyAccJerkMag-std		16
		Standard Deviation of Frequency Domain Body Body Linear Acceleration Magnitude
		-1..1	.Decimal number

	fBodyBodyGyroMag-mean		16
		Mean of Frequency Domain Body Body Gyroscope Magnitude
		-1..1	.Decimal number

	fBodyBodyGyroMag-std		16
		Standard Deviation of Frequency Domain Body Body Gyroscope Magnitude
		-1..1	.Decimal number

	fBodyBodyGyroJerkMag-mean	16
		Mean of Frequency Domain Body Body Angular Velocity Magnitude
		-1..1	.Decimal number

	fBodyBodyGyroJerkMag-std	16	
		Standard Deviation of Frequency Domain Body Body Angular Velocity Magnitude
		-1..1	.Decimal number
		
