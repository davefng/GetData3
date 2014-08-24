
This is the CodeBook for Human Activity Recognition Using Smartphones.
FEATURES SELECTION IN THE ORIGINAL DATA SET
The features selected for the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

SELECTION OF VARIABLES FOR THE FINAL TIDY DATA SET
The final tidy data set includes variables that account for the mean, standard deviation, and mean  frequencies.  The requirements were to find the mean and standard deviation for each measurement. The mean  frequencies were included because the mean frequencies are the Weighted average of the frequency  components, which is still a mean value.

VARIABLE NAMES IN THE FINAL TIDY DATA SET
Variables names in the final tidy data set had any special characters removed.  Upper case letters were  kept in order to help with the reading of the variable name.

NUMBER OF OBSERVATIONS AND NUMBER OF VARIABLES IN THE FINAL TIDY DATA SET
Since there are 30 subjects and 6 activity levels (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,  STANDING, LAYING), there is a total of 180 observations (30 x 6 = 180).  In addition, there are a total of  79 variables that measure the mean or standard deviations, resulting in a final data set of 180 rows by 81  variables (79 + 2 [subject number and activity]).
Since any one subject may have completed more than one observation for each activity, the average of that  activity was calculated for each subject.  The final tidy data set contains the averages of each activity  performed by each subject.


VARIABLES
 
VARIABLE NAME	FULL VARIABLE NAMES	TYPE	VALUES	   
Subject	Subject	integer	1 to 30	   
Activity	Activity	factor	WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING	   
tBodyAccmeanX	tBodyAcc-mean()-X	numeric	-1 to 1	   
tBodyAccmeanY	tBodyAcc-mean()-Y	numeric	-1 to 1	   
tBodyAccmeanZ	tBodyAcc-mean()-Z	numeric	-1 to 1	   
tBodyAccstdX	tBodyAcc-std()-X	numeric	-1 to 1	   
tBodyAccstdY	tBodyAcc-std()-Y	numeric	-1 to 1	   
tBodyAccstdZ	tBodyAcc-std()-Z	numeric	-1 to 1	   
tGravityAccmeanX	tGravityAcc-mean()-X	numeric	-1 to 1	   
tGravityAccmeanY	tGravityAcc-mean()-Y	numeric	-1 to 1	   
tGravityAccmeanZ	tGravityAcc-mean()-Z	numeric	-1 to 1	   
tGravityAccstdX	tGravityAcc-std()-X	numeric	-1 to 1	   
tGravityAccstdY	tGravityAcc-std()-Y	numeric	-1 to 1	   
tGravityAccstdZ	tGravityAcc-std()-Z	numeric	-1 to 1	   
tBodyAccJerkmeanX	tBodyAccJerk-mean()-X	numeric	-1 to 1	   
tBodyAccJerkmeanY	tBodyAccJerk-mean()-Y	numeric	-1 to 1	   
tBodyAccJerkmeanZ	tBodyAccJerk-mean()-Z	numeric	-1 to 1	   
tBodyAccJerkstdX	tBodyAccJerk-std()-X	numeric	-1 to 1	   
tBodyAccJerkstdY	tBodyAccJerk-std()-Y	numeric	-1 to 1	   
tBodyAccJerkstdZ	tBodyAccJerk-std()-Z	numeric	-1 to 1	   
tBodyGyromeanX	tBodyGyro-mean()-X	numeric	-1 to 1	   
tBodyGyromeanY	tBodyGyro-mean()-Y	numeric	-1 to 1	   
tBodyGyromeanZ	tBodyGyro-mean()-Z	numeric	-1 to 1	   
tBodyGyrostdX	tBodyGyro-std()-X	numeric	-1 to 1	   
tBodyGyrostdY	tBodyGyro-std()-Y	numeric	-1 to 1	   
tBodyGyrostdZ	tBodyGyro-std()-Z	numeric	-1 to 1	   
tBodyGyroJerkmeanX	tBodyGyroJerk-mean()-X	numeric	-1 to 1	   
tBodyGyroJerkmeanY	tBodyGyroJerk-mean()-Y	numeric	-1 to 1	   
tBodyGyroJerkmeanZ	tBodyGyroJerk-mean()-Z	numeric	-1 to 1	   
tBodyGyroJerkstdX	tBodyGyroJerk-std()-X	numeric	-1 to 1	   
tBodyGyroJerkstdY	tBodyGyroJerk-std()-Y	numeric	-1 to 1	   
tBodyGyroJerkstdZ	tBodyGyroJerk-std()-Z	numeric	-1 to 1	   
tBodyAccMagmean	tBodyAccMag-mean()	numeric	-1 to 1	   
tBodyAccMagstd	tBodyAccMag-std()	numeric	-1 to 1	   
tGravityAccMagmean	tGravityAccMag-mean()	numeric	-1 to 1	   
tGravityAccMagstd	tGravityAccMag-std()	numeric	-1 to 1	   
tBodyAccJerkMagmean	tBodyAccJerkMag-mean()	numeric	-1 to 1	   
tBodyAccJerkMagstd	tBodyAccJerkMag-std()	numeric	-1 to 1	   
tBodyGyroMagmean	tBodyGyroMag-mean()	numeric	-1 to 1	   
tBodyGyroMagstd	tBodyGyroMag-std()	numeric	-1 to 1	   
tBodyGyroJerkMagmean	tBodyGyroJerkMag-mean()	numeric	-1 to 1	   
tBodyGyroJerkMagstd	tBodyGyroJerkMag-std()	numeric	-1 to 1	   
fBodyAccmeanX	fBodyAcc-mean()-X	numeric	-1 to 1	   
fBodyAccmeanY	fBodyAcc-mean()-Y	numeric	-1 to 1	   
fBodyAccmeanZ	fBodyAcc-mean()-Z	numeric	-1 to 1	   
fBodyAccstdX	fBodyAcc-std()-X	numeric	-1 to 1	   
fBodyAccstdY	fBodyAcc-std()-Y	numeric	-1 to 1	   
fBodyAccstdZ	fBodyAcc-std()-Z	numeric	-1 to 1	   
fBodyAccmeanFreqX	fBodyAcc-meanFreq()-X	numeric	-1 to 1	   
fBodyAccmeanFreqY	fBodyAcc-meanFreq()-Y	numeric	-1 to 1	   
fBodyAccmeanFreqZ	fBodyAcc-meanFreq()-Z	numeric	-1 to 1	   
fBodyAccJerkmeanX	fBodyAccJerk-mean()-X	numeric	-1 to 1	   
fBodyAccJerkmeanY	fBodyAccJerk-mean()-Y	numeric	-1 to 1	   
fBodyAccJerkmeanZ	fBodyAccJerk-mean()-Z	numeric	-1 to 1	   
fBodyAccJerkstdX	fBodyAccJerk-std()-X	numeric	-1 to 1	   
fBodyAccJerkstdY	fBodyAccJerk-std()-Y	numeric	-1 to 1	   
fBodyAccJerkstdZ	fBodyAccJerk-std()-Z	numeric	-1 to 1	   
fBodyAccJerkmeanFreqX	fBodyAccJerk-meanFreq()-X	numeric	-1 to 1	   
fBodyAccJerkmeanFreqY	fBodyAccJerk-meanFreq()-Y	numeric	-1 to 1	   
fBodyAccJerkmeanFreqZ	fBodyAccJerk-meanFreq()-Z	numeric	-1 to 1	   
fBodyGyromeanX	fBodyGyro-mean()-X	numeric	-1 to 1	   
fBodyGyromeanY	fBodyGyro-mean()-Y	numeric	-1 to 1	   
fBodyGyromeanZ	fBodyGyro-mean()-Z	numeric	-1 to 1	   
fBodyGyrostdX	fBodyGyro-std()-X	numeric	-1 to 1	   
fBodyGyrostdY	fBodyGyro-std()-Y	numeric	-1 to 1	   
fBodyGyrostdZ	fBodyGyro-std()-Z	numeric	-1 to 1	   
fBodyGyromeanFreqX	fBodyGyro-meanFreq()-X	numeric	-1 to 1	   
fBodyGyromeanFreqY	fBodyGyro-meanFreq()-Y	numeric	-1 to 1	   
fBodyGyromeanFreqZ	fBodyGyro-meanFreq()-Z	numeric	-1 to 1	   
fBodyAccMagmean	fBodyAccMag-mean()	numeric	-1 to 1	   
fBodyAccMagstd	fBodyAccMag-std()	numeric	-1 to 1	   
fBodyAccMagmeanFreq	fBodyAccMag-meanFreq()	numeric	-1 to 1	   
fBodyBodyAccJerkMagmean	fBodyBodyAccJerkMag-mean()	numeric	-1 to 1	   
fBodyBodyAccJerkMagstd	fBodyBodyAccJerkMag-std()	numeric	-1 to 1	   
fBodyBodyAccJerkMagmeanFreq	fBodyBodyAccJerkMag-meanFreq()	numeric	-1 to 1	   
fBodyBodyGyroMagmean	fBodyBodyGyroMag-mean()	numeric	-1 to 1	   
fBodyBodyGyroMagstd	fBodyBodyGyroMag-std()	numeric	-1 to 1	   
fBodyBodyGyroMagmeanFreq	fBodyBodyGyroMag-meanFreq()	numeric	-1 to 1	   
fBodyBodyGyroJerkMagmean	fBodyBodyGyroJerkMag-mean()	numeric	-1 to 1	   
fBodyBodyGyroJerkMagstd	fBodyBodyGyroJerkMag-std()	numeric	-1 to 1	   
fBodyBodyGyroJerkMagmeanFreq	fBodyBodyGyroJerkMag-meanFreq()	numeric	-1 to 1	 

Note:  All measured data is normalized and bounded within [-1, 1]
The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean




















