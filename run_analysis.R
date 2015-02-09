# 0. Assumption is that the dataset is loaded in your wd
## Setting my own wd
## setwd("/Users/rogerfischer/datasciencecoursera/getdata/course_project")

# 1. Merge the training and the test sets to create one data set.
## First cbind subject, y and X, then rbind test and train to get to X

## 1.1. Traindata
X_train <- read.table("UCI\ HAR\ Dataset/train/X_train.txt")
subject_train <- read.table("UCI\ HAR\ Dataset/train/subject_train.txt")
y_train <- read.table("UCI\ HAR\ Dataset/train/y_train.txt")

## 2.2. Add subject_train and y_train to X_test
X_train_new <- cbind(subject_train, y_train, X_train)

## 2.1. Testdata 
X_test <- read.table("UCI\ HAR\ Dataset/test/X_test.txt")
subject_test <- read.table("UCI\ HAR\ Dataset/test/subject_test.txt")
y_test <- read.table("UCI\ HAR\ Dataset/test/y_test.txt")

## 2.2. Add subject_test and y_test to X_test
X_test_new <- cbind(subject_test, y_test, X_test)

## 3.1
X <- rbind(X_train_new, X_test_new)


# 2. Extract only the measurements on the mean and standard deviation for each measurement. 




