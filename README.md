# getting-and-cleaning-data-course-project-human-activity
Human Activity Recognition Using Smartphones Dataset

One of the most exciting areas in all of data science right now is wearable computing. 
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S 
smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 
3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been 
video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 
70% of the volunteers was selected for generating the training data and 30% the test data.

The code in run_analysis.R does the following:
 - download the zip file from web
 - unzip it
 - load the data sets and give them column names, namely, activity, subject, test data, test labels, train data and train lables
 - merge them together logically
 - extract only the measurements on the mean and standard deviation for each measurement
 - use descriptive activity names to name the activities in the data set
 - appropriately label the data set with descriptive variable names
 - creates a second, independent tidy data set with the average of each variable for each activity and each subject
 - print out the tidy data set to folder
 
The codebook.md in this repo describes the variables in the output file
