# varaibles in this data set

## subject and activity
- subject: an identifier of the subject who carried out the experiment. Its range is from 1 to 30.
- activity: the activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

## time and frequency domain variables related to mean and standard devitation of the features of each subject and activity:
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

Units: varibles are normalized and bounded within [-1,1]. The acceleration signal from the smartphone accelerometer 
X axis in standard gravity units 'g'; the angular velocity vector measured by the gyroscope for each window sample, 
the units are radians/second.

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

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation

Then the mean of each variable for each activity and each subject is calcuated and showing above.

Complete list of varaibles are:
 [1] "subject"                                                     
 [2] "activity"                                                    
 [3] "time_of_Body_accelerometer-mean()-_X-axis"                   
 [4] "time_of_Body_accelerometer-mean()-_Y-axis"                   
 [5] "time_of_Body_accelerometer-mean()-_Z-axis"                   
 [6] "time_of_Body_accelerometer-std()-_X-axis"                    
 [7] "time_of_Body_accelerometer-std()-_Y-axis"                    
 [8] "time_of_Body_accelerometer-std()-_Z-axis"                    
 [9] "time_of_Gravity_accelerometer-mean()-_X-axis"                
[10] "time_of_Gravity_accelerometer-mean()-_Y-axis"                
[11] "time_of_Gravity_accelerometer-mean()-_Z-axis"                
[12] "time_of_Gravity_accelerometer-std()-_X-axis"                 
[13] "time_of_Gravity_accelerometer-std()-_Y-axis"                 
[14] "time_of_Gravity_accelerometer-std()-_Z-axis"                 
[15] "time_of_Body_accelerometerJerk-mean()-_X-axis"               
[16] "time_of_Body_accelerometerJerk-mean()-_Y-axis"               
[17] "time_of_Body_accelerometerJerk-mean()-_Z-axis"               
[18] "time_of_Body_accelerometerJerk-std()-_X-axis"                
[19] "time_of_Body_accelerometerJerk-std()-_Y-axis"                
[20] "time_of_Body_accelerometerJerk-std()-_Z-axis"                
[21] "time_of_Body_gyroscope-mean()-_X-axis"                       
[22] "time_of_Body_gyroscope-mean()-_Y-axis"                       
[23] "time_of_Body_gyroscope-mean()-_Z-axis"                       
[24] "time_of_Body_gyroscope-std()-_X-axis"                        
[25] "time_of_Body_gyroscope-std()-_Y-axis"                        
[26] "time_of_Body_gyroscope-std()-_Z-axis"                        
[27] "time_of_Body_gyroscopeJerk-mean()-_X-axis"                   
[28] "time_of_Body_gyroscopeJerk-mean()-_Y-axis"                   
[29] "time_of_Body_gyroscopeJerk-mean()-_Z-axis"                   
[30] "time_of_Body_gyroscopeJerk-std()-_X-axis"                    
[31] "time_of_Body_gyroscopeJerk-std()-_Y-axis"                    
[32] "time_of_Body_gyroscopeJerk-std()-_Z-axis"                    
[33] "time_of_Body_accelerometer_Magnitude-mean()"                 
[34] "time_of_Body_accelerometer_Magnitude-std()"                  
[35] "time_of_Gravity_accelerometer_Magnitude-mean()"              
[36] "time_of_Gravity_accelerometer_Magnitude-std()"               
[37] "time_of_Body_accelerometerJerk_Magnitude-mean()"             
[38] "time_of_Body_accelerometerJerk_Magnitude-std()"              
[39] "time_of_Body_gyroscope_Magnitude-mean()"                     
[40] "time_of_Body_gyroscope_Magnitude-std()"                      
[41] "time_of_Body_gyroscopeJerk_Magnitude-mean()"                 
[42] "time_of_Body_gyroscopeJerk_Magnitude-std()"                  
[43] "frequency_of_Body_accelerometer-mean()-_X-axis"              
[44] "frequency_of_Body_accelerometer-mean()-_Y-axis"              
[45] "frequency_of_Body_accelerometer-mean()-_Z-axis"              
[46] "frequency_of_Body_accelerometer-std()-_X-axis"               
[47] "frequency_of_Body_accelerometer-std()-_Y-axis"               
[48] "frequency_of_Body_accelerometer-std()-_Z-axis"               
[49] "frequency_of_Body_accelerometer-meanFreq()-_X-axis"          
[50] "frequency_of_Body_accelerometer-meanFreq()-_Y-axis"          
[51] "frequency_of_Body_accelerometer-meanFreq()-_Z-axis"          
[52] "frequency_of_Body_accelerometerJerk-mean()-_X-axis"          
[53] "frequency_of_Body_accelerometerJerk-mean()-_Y-axis"          
[54] "frequency_of_Body_accelerometerJerk-mean()-_Z-axis"          
[55] "frequency_of_Body_accelerometerJerk-std()-_X-axis"           
[56] "frequency_of_Body_accelerometerJerk-std()-_Y-axis"           
[57] "frequency_of_Body_accelerometerJerk-std()-_Z-axis"           
[58] "frequency_of_Body_accelerometerJerk-meanFreq()-_X-axis"      
[59] "frequency_of_Body_accelerometerJerk-meanFreq()-_Y-axis"      
[60] "frequency_of_Body_accelerometerJerk-meanFreq()-_Z-axis"      
[61] "frequency_of_Body_gyroscope-mean()-_X-axis"                  
[62] "frequency_of_Body_gyroscope-mean()-_Y-axis"                  
[63] "frequency_of_Body_gyroscope-mean()-_Z-axis"                  
[64] "frequency_of_Body_gyroscope-std()-_X-axis"                   
[65] "frequency_of_Body_gyroscope-std()-_Y-axis"                   
[66] "frequency_of_Body_gyroscope-std()-_Z-axis"                   
[67] "frequency_of_Body_gyroscope-meanFreq()-_X-axis"              
[68] "frequency_of_Body_gyroscope-meanFreq()-_Y-axis"              
[69] "frequency_of_Body_gyroscope-meanFreq()-_Z-axis"              
[70] "frequency_of_Body_accelerometer_Magnitude-mean()"            
[71] "frequency_of_Body_accelerometer_Magnitude-std()"             
[72] "frequency_of_Body_accelerometer_Magnitude-meanFreq()"        
[73] "frequency_of_BodyBody_accelerometerJerk_Magnitude-mean()"    
[74] "frequency_of_BodyBody_accelerometerJerk_Magnitude-std()"     
[75] "frequency_of_BodyBody_accelerometerJerk_Magnitude-meanFreq()"
[76] "frequency_of_BodyBody_gyroscope_Magnitude-mean()"            
[77] "frequency_of_BodyBody_gyroscope_Magnitude-std()"             
[78] "frequency_of_BodyBody_gyroscope_Magnitude-meanFreq()"        
[79] "frequency_of_BodyBody_gyroscopeJerk_Magnitude-mean()"        
[80] "frequency_of_BodyBody_gyroscopeJerk_Magnitude-std()"         
[81] "frequency_of_BodyBody_gyroscopeJerk_Magnitude-meanFreq()" 
