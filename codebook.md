# varaibles in this data set

## subject and activity
- subject: an identifier of the subject who carried out the experiment. Its range is from 1 to 30.
- activity: the activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

## time and frequency domain variables related to activities (70 variables total):
- time_of_Body_accelerometer-XYZ
- time_of_Gravity_accelerometer-XYZ
- time_of_Body_accelerometerJerk-XYZ
- time_of_Body_gyroscope-XYZ
- time_of_Body_gyroscopeJerk-XYZ
- time_of_Body_accelerometerMag_Magnitude
- time_of_Gravity_accelerometer_Magnitude
- time_of_Body_accelerometerJerk_Magnitude
- time_of_Body_gyroscope_Magnitude
- time_of_Body_gyroscopeJerk_Magnitude
- frequency_of_Body_accelerometer-XYZ
- frequency_of_Body_accelerometerJerk-XYZ
- frequency_of_Body_gyroscope-XYZ
- frequency_of_Body_accelerometer_Magnitude
- frequency_of_BodyBody_accelerometerJerk_Magnitude
- frequency_of_BodyBody_gyroscope_Magnitude
- frequency_of_BodyBody_gyroscopeJerk_Magnitude

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 
20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ 
and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Only meean and std (standard devitation) varaibles are kept.

Units: varibles are normalized and bounded within [-1,1]. The acceleration signal from the smartphone accelerometer 
X axis in standard gravity units 'g'; the angular velocity vector measured by the gyroscope for each window sample, 
the units are radians/second.

