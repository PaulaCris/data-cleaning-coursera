# CodeBook
# Describes the variables and transformations.
# The data was  collected from the accelerometers from the Samsung GalaxyS smartphone
# 
# Link downloaded:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
# Data Set description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
# 
# 
# The dataset downloaded has the follow files:
#   
# 'features_info.txt': Shows information about the variables used on the feature vector.
# 
# 'features.txt': List of all features.
# 
# 'activity_labels.txt': Links the class labels with their activity name.
# 
# 'train/X_train.txt': Training set.
# 
# 'train/y_train.txt': Training labels.
# 
# 'test/X_test.txt': Test set.
# 
# 'test/y_test.txt': Test labels.
# 
# 
# The project will follow 5 parts. The goal is get a tidy data:
# 
# 1. Merges the training and the test sets to create one data set.
# 
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 
# 3. Uses descriptive activity names to name the activities in the data set
# 
# 4. Appropriately labels the data set with descriptive variable names. 
# 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#  

#The end we will get a data frame df.csv [180 x 88]
> colnames <- colnames(df)
> colnames
[1] "subject"                              "activities"                          
[3] "tBodyAcc.mean...X"                    "tBodyAcc.mean...Y"                   
[5] "tBodyAcc.mean...Z"                    "tGravityAcc.mean...X"                
[7] "tGravityAcc.mean...Y"                 "tGravityAcc.mean...Z"                
[9] "tBodyAccJerk.mean...X"                "tBodyAccJerk.mean...Y"               
[11] "tBodyAccJerk.mean...Z"                "tBodyGyro.mean...X"                  
[13] "tBodyGyro.mean...Y"                   "tBodyGyro.mean...Z"                  
[15] "tBodyGyroJerk.mean...X"               "tBodyGyroJerk.mean...Y"              
[17] "tBodyGyroJerk.mean...Z"               "tBodyAccMag.mean.."                  
[19] "tGravityAccMag.mean.."                "tBodyAccJerkMag.mean.."              
[21] "tBodyGyroMag.mean.."                  "tBodyGyroJerkMag.mean.."             
[23] "fBodyAcc.mean...X"                    "fBodyAcc.mean...Y"                   
[25] "fBodyAcc.mean...Z"                    "fBodyAcc.meanFreq...X"               
[27] "fBodyAcc.meanFreq...Y"                "fBodyAcc.meanFreq...Z"               
[29] "fBodyAccJerk.mean...X"                "fBodyAccJerk.mean...Y"               
[31] "fBodyAccJerk.mean...Z"                "fBodyAccJerk.meanFreq...X"           
[33] "fBodyAccJerk.meanFreq...Y"            "fBodyAccJerk.meanFreq...Z"           
[35] "fBodyGyro.mean...X"                   "fBodyGyro.mean...Y"                  
[37] "fBodyGyro.mean...Z"                   "fBodyGyro.meanFreq...X"              
[39] "fBodyGyro.meanFreq...Y"               "fBodyGyro.meanFreq...Z"              
[41] "fBodyAccMag.mean.."                   "fBodyAccMag.meanFreq.."              
[43] "fBodyBodyAccJerkMag.mean.."           "fBodyBodyAccJerkMag.meanFreq.."      
[45] "fBodyBodyGyroMag.mean.."              "fBodyBodyGyroMag.meanFreq.."         
[47] "fBodyBodyGyroJerkMag.mean.."          "fBodyBodyGyroJerkMag.meanFreq.."     
[49] "angle.tBodyAccMean.gravity."          "angle.tBodyAccJerkMean..gravityMean."
[51] "angle.tBodyGyroMean.gravityMean."     "angle.tBodyGyroJerkMean.gravityMean."
[53] "angle.X.gravityMean."                 "angle.Y.gravityMean."                
[55] "angle.Z.gravityMean."                 "tBodyAcc.std...X"                    
[57] "tBodyAcc.std...Y"                     "tBodyAcc.std...Z"                    
[59] "tGravityAcc.std...X"                  "tGravityAcc.std...Y"                 
[61] "tGravityAcc.std...Z"                  "tBodyAccJerk.std...X"                
[63] "tBodyAccJerk.std...Y"                 "tBodyAccJerk.std...Z"                
[65] "tBodyGyro.std...X"                    "tBodyGyro.std...Y"                   
[67] "tBodyGyro.std...Z"                    "tBodyGyroJerk.std...X"               
[69] "tBodyGyroJerk.std...Y"                "tBodyGyroJerk.std...Z"               
[71] "tBodyAccMag.std.."                    "tGravityAccMag.std.."                
[73] "tBodyAccJerkMag.std.."                "tBodyGyroMag.std.."                  
[75] "tBodyGyroJerkMag.std.."               "fBodyAcc.std...X"                    
[77] "fBodyAcc.std...Y"                     "fBodyAcc.std...Z"                    
[79] "fBodyAccJerk.std...X"                 "fBodyAccJerk.std...Y"                
[81] "fBodyAccJerk.std...Z"                 "fBodyGyro.std...X"                   
[83] "fBodyGyro.std...Y"                    "fBodyGyro.std...Z"                   
[85] "fBodyAccMag.std.."                    "fBodyBodyAccJerkMag.std.."           
[87] "fBodyBodyGyroMag.std.."               "fBodyBodyGyroJerkMag.std.." 
