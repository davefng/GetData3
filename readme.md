#Human Activity Recognition Using Smartphones Dataset - Version 1.0

##The Original Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
 

Note: Features are normalized and bounded within [-1,1].


##The Final Tidy Data Set
The data comes from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The tidy data set was created from an R script called run_analysis.R that does the following. 

1)	Merges the training and the test sets to create one data set.
- Read in the training data, training subjects, and training labels.  Combined the training data, training subjects, and training labels to be one table.  (trainData table: 7352 x 563)
- Read in the test data, test subjects, and test labels.  Combined the test data, test subjects, and test labels to be the second table  (testData table: 2947 x 563)
- Combined the training data and test data tables to be one table called 'completeData'.  Because there are multiple columns called V1 and V2, I changed the appropriate columns of subject and activity to be 'Subject' and 'Act' respectively.  (completeData table: 10299 x 563)

2)	Extracts only the measurements on the mean and standard deviation for each measurement.
- Extracted any columns with mean, standard deviation, or mean Frequency by grep those elements from the features table and using this to extract those columns from the completedData table to create a new table called completeData2.  (msfeatures table: 79 x 2 and completedData2 table: 10299 x 81)

3)	Uses descriptive activity names to name the activities in the data set
- Read in the features table, which will be used to rename the columns in the combined data set.  (features table: 561 x 2)

4)	Appropriately labels the data set with descriptive variable names.
- Renamed and replaced column names in the completeData2 table by using the features name list and removing any non-letters, but leaving some upper case letters for readability. (10299 x 81 table)

5)	Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- The final data set includes data that calculates the average of each variable for each activity and each subject.  (Final data set is a table: 180 x 81)


##The Scripts
1. Download the data source and put into a folder on your local drive. Be sure to include a UCI HAR Dataset folder.
2. Put run_analysis.R in the parent folder of UCI HAR Dataset and set the parent folder as your working directory in R using setwd() function.
3. Run source("run_analysis.R"), which will produce the 'finalData.txt' in your working directory.
