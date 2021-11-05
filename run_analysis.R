
library(dplyr)

# Getting the file downloaded and unzip it
fileName <- "UCIdata.zip" #thats the original file's name
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
df <- "UCI HAR Dataset" #df will be my file's name

if(!file.exists(fileName)){
  download.file(url,fileName, mode = "wb") 
}

if(!file.exists(df)){
  unzip("UCIdata.zip", files = NULL, exdir=".")
}


#Reading data .... they are txt using read.table function and add col.names already
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))
activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
ytest <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")


# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##1. using rbind to combind them
dataset <- data.frame((rbind(xtrain,xtest)),(rbind(ytrain, ytest)),(rbind(subjecttrain, subjecttest)))
##2 mean std
dataset1 <- dataset %>% select(subject, code, contains("mean"), contains("std"))
##3 add activities
dataset1$code <- activities[dataset1$code, 2]
##4Checking the colunm names given from the beggining
colnames(dataset1)
##5 average

df <- dataset1 %>%
  group_by(subject, code) %>% #code here means activities
  summarise_all(funs(mean))
print(df)
colnames(df)[which(names(df) == "code")] <- "activities"
print(df)

write.csv("C:/Users/paull/OneDrive/Documents/R Projects/Courses Coursera/df.csv")


#Done


