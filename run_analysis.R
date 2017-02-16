#week4 finalExcersie
#Jorge Balderas
#You should create one R script called run_analysis.R that does the following.
#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement.
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

----
  library(data.table)
library(dplyr)
--
  setwd("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/test")
setwd("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/train")

#Cols&Names and Activity Labels
features <- read.table("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/features.txt")[,2]
activity_labels <- read.table("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/activity_labels.txt")[,2]

# TEST
x_test <- read.table("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/test/y_test.txt")
subject_test <-read.table("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/test/subject_test.txt")

# TRAIN
x_train <- read.table("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/train/y_train.txt")
subject_train <-read.table("C:/Users/jorge.balderas.ayala/Documents/R/data/Getting and Cleaning Data/UCI HAR Dataset/train/subject_train.txt")


# mean & Std
names (x_test) = features
names (x_train) = features
extract_features <- grepl("mean|std", features)
x_test1= x_test[,extract_features]
x_train1 = x_train[,extract_features]

# Labels
y_test[,2] = activity_labels[y_test[,1]]
y_train[,2] = activity_labels[y_train[,1]]

names(y_test)  = c("Activity_ID", "Activity_Label")
names(y_train) = c("Activity_ID", "Activity_Label")

names(subject_test)  = "subject"
names(subject_train) = "subject"


### Data 
test_data  <- cbind(subject_test,  y_test,  x_test1)
train_data <- cbind(subject_train, y_train, x_train1)

finaldata = rbind(test_data, train_data)
dim(finaldata)

finaldataavg <- aggregate(.~finaldata$Activity_Label, finaldata, mean) 
write.table(finaldataavg, "tidy.txt", row.name = FALSE) 

dim(finaldataavg)


