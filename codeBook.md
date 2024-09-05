# Code book for the tidyData.txt data file
## This is how I get the tidy dataset.
1. First I downloaded the data zip file using *download.fle()*.
2. Next I unzipped it.
3. Then, I read the data in *.txt* format using the *read.table()*.
4. The *x data* are the measurements of acceleration and gyrovelocity for body and gravity etc.
5. The *y data* are the labels encoded with numeric values for the activity of each subject.
6. The *subject data* are the id of the subjects, from 1 to 30
7. After that I merged the test and train datasets by using *rbind()*
8. Then, I got the index of the features with mean and standard deviation using *grep()* with value = FALSE
9. Next I subset the columns by using the index of the feature from previous step.
10. Then I rename the columns by using *names()* and *grep()* with value = TRUE
11. Next, I use *merge()* to merge the acitivity label and y data set of the activity code.
12. Then, I replace the code values with vector values containing descriptive labels.
13. After that I combined the *subject*, *ydata* as *activity* and *x data* using *cbind()*.
14. Then, I use **dplyr** *group_by()* and *summarize_all()* to calculate the average of mean and sd of acceleration and gyrovelocity for each subject and each activity.
15. Finally, I export the tidy data by using *write.table()* with row.names = FALSE

## Variables
[1] "subject"                     - number id for each subject (1 to 30)
[2] "activity"                    - activity ("STANDING", "WALKING_DOWNSTAIRS", "SITTING", "WALKING_UPSTAIRS", "LAYING", "WALKING")
The rest are the average measuremets of acceleration and gyrovelocity for each subject and activities.
The codes of the column names can be explained as followed: 
Body (body measurement) Gravity (gravity measurement) Acc (acceleration) Gyro (gyrovelocity) mean(mean value) std(standard deviation) XYZ (X, Y and Z axes)
[3] "tBodyAcc-mean()-X"           
[4] "tBodyAcc-mean()-Y"          
[5] "tBodyAcc-mean()-Z"           
[6] "tBodyAcc-std()-X"           
[7] "tBodyAcc-std()-Y"            
[8] "tBodyAcc-std()-Z"           
[9] "tGravityAcc-mean()-X"       
[10]"tGravityAcc-mean()-Y"       
[11] "tGravityAcc-mean()-Z"       
[12]"tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"        
[14]"tGravityAcc-std()-Z"        
[15] "tBodyAccJerk-mean()-X"      
[16] "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"       
[18] "tBodyAccJerk-std()-X"       
[19] "tBodyAccJerk-std()-Y"     
[20]"tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"       
[22] "tBodyGyro-mean()-Y"         
[23] "tBodyGyro-mean()-Z"          
[24]"tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"          
[26] "tBodyGyro-std()-Z"          
[27] "tBodyGyroJerk-mean()-X"      
[28] "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"     
[30] "tBodyGyroJerk-std()-X"      
[31] "tBodyGyroJerk-std()-Y"    
[32] "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"         
[34] "tBodyAccMag-std()"          
[35] "tGravityAccMag-mean()"     
[36] "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"      
[38] "tBodyAccJerkMag-std()"      
[39] "tBodyGyroMag-mean()"        
[40] "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"     
[42] "tBodyGyroJerkMag-std()"     
[43] "fBodyAcc-mean()-X"         
[44] "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"           
[46] "fBodyAcc-std()-X"           
[47] "fBodyAcc-std()-Y"            
[48] "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"       
[50] "fBodyAccJerk-mean()-Y"      
[51] "fBodyAccJerk-mean()-Z"       
[52] "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"       
[54] "fBodyAccJerk-std()-Z"       
[55] "fBodyGyro-mean()-X"          
[56] "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"         
[58] "fBodyGyro-std()-X"          
[59] "fBodyGyro-std()-Y"           
[60] "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"          
[62] "fBodyAccMag-std()"          
[63] "fBodyBodyAccJerkMag-mean()"  
[64] "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"    
[66] "fBodyBodyGyroMag-std()"     
[67] "fBodyBodyGyroJerkMag-mean()" 
[68] "fBodyBodyGyroJerkMag-std()" 
