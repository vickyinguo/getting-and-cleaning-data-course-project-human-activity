##load necessary package
library(dplyr)

##download the file
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
file<-download.file(url,"project_data.zip")

## use unzip for view the content in the folder
unzip("project_data.zip",list=T)
##there are 2 folders in the file - test and train, each has 3 txt files
##subject, X and y and one folder called "Inertial Signals"

##extract the data to get easy access to the files in the folder
outDir<-"C:\\Users\\xxxx\\Documents\\R\\Getting and Cleaning Data"
unzip("project_data.zip",exdir=outDir)

##set unzipped folder as working directory
setwd("~/R/Getting and Cleaning Data/UCI HAR Dataset")

##get activity
activity<-read.table("activity_labels.txt")
##view activity, there are 6 activities
activity

##get features
features<-read.table("features.txt")
##view feature, there are 561 features
dim(features)
head(features)

##extract X_test.txt, y_test and subject_test from test folder and give them column names
X_test<-read.table("~/R/Getting and Cleaning Data/UCI HAR Dataset/test/X_test.txt")
names(X_test)<-features[,2]
y_test<-read.table("~/R/Getting and Cleaning Data/UCI HAR Dataset/test/y_test.txt")
names(y_test)<-"activity"
subject_test<-read.table("~/R/Getting and Cleaning Data/UCI HAR Dataset/test/subject_test.txt")
names(subject_test)<-"subject"

##dimension of X_test
dim(X_test)
##dimension of y_test
dim(y_test)
##dimension of subject_test
dim(subject_test)

##they have same number of rows, so can be merged together
test<-cbind(X_test,y_test,subject_test)

##new test data has 562 columns, so merge is correct
dim(test)

##view first few rows
head(test)

##do the same for training data
X_train<-read.table("~/R/Getting and Cleaning Data/UCI HAR Dataset/train/X_train.txt")
names(X_train)<-features[,2]
y_train<-read.table("~/R/Getting and Cleaning Data/UCI HAR Dataset/train/y_train.txt")
names(y_train)<-"activity"
subject_train<-read.table("~/R/Getting and Cleaning Data/UCI HAR Dataset/train/subject_train.txt")
names(subject_train)<-"subject"

dim(X_train)
dim(y_train)
dim(subject_train)

train<-cbind(X_train,y_train,subject_train)
dim(train)
head(train)

##Requirement 1: combine test and train data
data<-rbind(test,train)

##the row number is the sum of test and train, the merge is correct
dim(data)

##Requirement 2: Extract only the measurements on the mean and standard deviation for each measurement
final_data<-data[,grepl("mean|std|activity|subject",names(data))]

##Requirement 3: Use descriptive activity names to name the activities in the data set
final_data<-merge(final_data, activity, by.x="activity",by.y="V1")
final_data<-select(final_data,-activity)
final_data<-rename(final_data, activity=V2)

##Requirement 4: Appropriately label the data set with descriptive variable names

colrename<-function(x){
    colnames(x) <- gsub("^t", "time_of_", colnames(x));
    colnames(x) <- gsub("^f", "frequency_of_", colnames(x));
    colnames(x) <- gsub("Acc", "_accelerometer", colnames(x));
    colnames(x) <- gsub("Gyro", "_gyroscope", colnames(x));
    colnames(x) <- gsub("X", "_X-axis", colnames(x));
    colnames(x) <- gsub("Y", "_Y-axis", colnames(x));
    colnames(x) <- gsub("Z", "_Z-axis", colnames(x));
    colnames(x) <- gsub("Mag", "_Magnitude", colnames(x));
    x
}

final_clean_data <- colrename(final_data)

##Requirement 5: From the data set in step 4, creates a second, independent tidy data set with the average of 
##each variable for each activity and each subject
final_clean_data %>% group_by(subject, activity)
output<-aggregate(.~subject+activity, data = final_clean_data,FUN=mean)

##print out to folder, called step 5 data.txt
write.table(output,row.name=FALSE,"step 5 data.txt")
