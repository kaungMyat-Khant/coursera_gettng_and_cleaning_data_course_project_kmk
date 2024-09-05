
# Download the data sets ---------------------------------------------------

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url = url,
              destfile = "./data/dataset.zip", method = "curl")
setwd("./data")
unzip("dataset.zip")
list.files()
list.files(path = "./UCI HAR Dataset", all.files = T, full.names = T)

# Read the data -----------------------------------------------------------
rm(list = ls())
getwd()
setwd("./UCI HAR Dataset")

x_test <- read.table(file = "./test/X_test.txt")
y_test <- read.table(file = "./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

# Merge the train and test data -------------------------------------------

x_merge <- rbind(x_train,x_test)
y_merge <- rbind(y_train, y_test)
subject_merge <- rbind(subject_train, subject_test)


# Extract the mean and standard deviation measurement ---------------------------

feature <- read.table("./features.txt")
mean_sd <- grep("mean\\(\\)|std\\(\\)", feature[,2])
mean_sd
xdata <- x_merge[, mean_sd]
names(xdata) <- grep("mean\\(\\)|std\\(\\)", feature[,2], value=T)

# Give descriptive activity names -----------------------------------------

activity_label <- read.table("./activity_labels.txt")
## test the merge using the code
head(activity_label)
head(y_merge) ; nrow(y_merge)
head(merge(y_merge, activity_label, by = "V1", all.x = T, sort = F))
nrow(merge(y_merge, activity_label, by = "V1", all.x = T, sort = F))

## merge the data and label
activity <- merge(y_merge, activity_label, by = "V1", all.x = T, sort = F)
tail(activity)

## replace the label to y_merge
y_merge <- activity$V2


# Combine the data sets and give descriptive variable names ---------------

data <- cbind(subject_merge, y_merge, xdata)
names(data)[1:2] <- c("subject","activity")


# Second data set with average for each activity and subjects -------------
library(dplyr)
tidy_data <- data %>% 
    group_by(subject, activity) %>% ## I think subject grouping first is good
    summarize_all(mean)

# Export the data set ------------------------------------------------------

getwd()
write.table(tidy_data, file = "./tidyData.txt")


# End of the script -------------------------------------------------------


