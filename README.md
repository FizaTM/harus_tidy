# Human Activity Recognition Using Smartphones Tidy Dataset
https://github.com/rogerfischer/harus_tidy

The [dataset](https://github.com/rogerfischer/harus_tidy#dataset) is first explored in [Directory Structure: UCI HAR Dataset](https://github.com/rogerfischer/harus_tidy#directory-structure-uci-har-dataset).
Then the [task](https://github.com/rogerfischer/harus_tidy#task) is explained. The follows a [First Exploration of the Data](https://github.com/rogerfischer/harus_tidy#first-exploration-of-the-data).

The [run_analysis.R script](https://github.com/rogerfischer/harus_tidy/blob/master/run_analysis.R) performs all important transformations of the data, which are detailed in [Solution: Steps 1-5 & Upload as text file](https://github.com/rogerfischer/harus_tidy#solution-steps-1-5--upload-as-text-file). 


## Overview
* [Getting and Cleaning Data Course Project](https://github.com/rogerfischer/harus_tidy#getting-and-cleaning-data-course-project)
* [Dataset](https://github.com/rogerfischer/harus_tidy#dataset)
* [Download and Unzip](https://github.com/rogerfischer/harus_tidy#download-and-unzip)
* [Directory Structure: UCI HAR Dataset](https://github.com/rogerfischer/harus_tidy#directory-structure-uci-har-dataset)
* [Task](https://github.com/rogerfischer/harus_tidy#task)
* [First Exploration of the Data](https://github.com/rogerfischer/harus_tidy#first-exploration-of-the-data)
* [Solution: Steps 1-5 & Upload as text file](https://github.com/rogerfischer/harus_tidy#solution-steps-1-5--upload-as-text-file)


## Getting and Cleaning Data Course Project
From [https://class.coursera.org/getdata-011/](https://class.coursera.org/getdata-011/). 
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 


## Dataset
Zipped data for the project: 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

From:
[Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

### License:
Use of this dataset in publications must be acknowledged by referencing the following 
publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support
Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be 
addressed to the authors or their institutions for its use or misuse. Any commercial use
is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



## Download and Unzip

### setwd()
```{r eval=FALSE}
setwd("/Users/rogerfischer/datasciencecoursera/getdata/course_project")
```

### Download the file
```{r eval=FALSE}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# Create the placeholder file
file = "data.zip"
# Download into the placeholder file
download.file(fileUrl, destfile = file, method = "curl")
dateDownloaded <- date()
# dateDownloaded  # "Sat Feb  7 17:11:46 2015"
```

### Unzip the File
Unzip the file to the zip directory
```{r eval=FALSE}
unzip(file, exdir = ".", overwrite = TRUE)
```

 
## Directory Structure: UCI HAR Dataset
* README.txt and features_info.txt are files with explanations. 
* The files activity_labels.txt and features.txt define the variable names for y_test.txt and X_test.txt
* Explanations for the train set below work for the test set as well. 

### UCI\ HAR\ Dataset
* README.txt    
* activity_labels.txt  
* features.txt		
* features_info.txt	
* test
  * X_test.txt 	
  * subject_test.txt 
  * y_test.txt 
  * Inertial\ Signals
    * body_acc_x_test.txt  
    * body_acc_y_test.txt  
    * body_acc_z_test.txt	
    * body_gyro_x_test.txt
    * body_gyro_y_test.txt
    * body_gyro_z_test.txt
    * total_acc_x_test.txt
    * total_acc_y_test.tx
    * total_acc_z_test.txt
* train
  * X_train.txt 
  (Train set) 	
  * subject_train.txt	
  (Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. )
  * y_train.txt 
  (Training labels. See activity_labels.txt)
  * Inertial\ Signals
    * body_acc_x_train.txt 
    (The body acceleration signal obtained by subtracting the gravity from the total acceleration. )  
    * body_acc_y_train.txt
    * body_acc_z_train.txt  
    * body_gyro_x_train.txt 
    (The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.)
    * body_gyro_y_train.txt  
    * body_gyro_z_train.txt	
    * total_acc_x_train.txt	
    (The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.)
    * total_acc_y_train.txt
    * total_acc_z_train.txt


## Task
You will be required to submit: 

1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis, and 
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
4. You should also include a README.md in the repo with your scripts. 
This repo explains how all of the scripts work and how they are connected.  

### Tidy Dataset
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
   Solution:
   
   From features_info.txt
   * mean(): Mean value
   * std(): Standard deviation
   
   From features.txt
   * 1 tBodyAcc-mean()-X
   * 2 tBodyAcc-mean()-Y
   * 3 tBodyAcc-mean()-Z
   * 4 tBodyAcc-std()-X
   * 5 tBodyAcc-std()-Y
   * 6 tBodyAcc-std()-Z   
   * 41 tGravityAcc-mean()-X
   * 42 tGravityAcc-mean()-Y
   * 43 tGravityAcc-mean()-Z
   * 44 tGravityAcc-std()-X
   * 45 tGravityAcc-std()-Y
   * 46 tGravityAcc-std()-Z   
   * 81 tBodyAccJerk-mean()-X
   * 82 tBodyAccJerk-mean()-Y
   * 83 tBodyAccJerk-mean()-Z
   * 84 tBodyAccJerk-std()-X
   * 85 tBodyAccJerk-std()-Y
   * 86 tBodyAccJerk-std()-Z   
   * 121 tBodyGyro-mean()-X
   * 122 tBodyGyro-mean()-Y
   * 123 tBodyGyro-mean()-Z
   * 124 tBodyGyro-std()-X
   * 125 tBodyGyro-std()-Y
   * 126 tBodyGyro-std()-Z  
   * 161 tBodyGyroJerk-mean()-X
   * 162 tBodyGyroJerk-mean()-Y
   * 163 tBodyGyroJerk-mean()-Z
   * 164 tBodyGyroJerk-std()-X
   * 165 tBodyGyroJerk-std()-Y
   * 166 tBodyGyroJerk-std()-Z
   * 201 tBodyAccMag-mean()
   * 202 tBodyAccMag-std()
   * 214 tGravityAccMag-mean()
   * 215 tGravityAccMag-std()
   * 227 tBodyAccJerkMag-mean()
   * 228 tBodyAccJerkMag-std()
   * 240 tBodyGyroMag-mean()
   * 241 tBodyGyroMag-std()
   * 253 tBodyGyroJerkMag-mean()
   * 254 tBodyGyroJerkMag-std()
   * 266 fBodyAcc-mean()-X
   * 267 fBodyAcc-mean()-Y
   * 268 fBodyAcc-mean()-Z
   * 269 fBodyAcc-std()-X
   * 270 fBodyAcc-std()-Y
   * 271 fBodyAcc-std()-Z
      * (295 fBodyAcc-meanFreq()-Y)
      * (296 fBodyAcc-meanFreq()-Z)
   * 345 fBodyAccJerk-mean()-X
   * 346 fBodyAccJerk-mean()-Y
   * 347 fBodyAccJerk-mean()-Z
   * 348 fBodyAccJerk-std()-X
   * 349 fBodyAccJerk-std()-Y
   * 350 fBodyAccJerk-std()-Z
      * (373 fBodyAccJerk-meanFreq()-X)
      * (374 fBodyAccJerk-meanFreq()-Y)
      * (375 fBodyAccJerk-meanFreq()-Z)
   * 424 fBodyGyro-mean()-X
   * 425 fBodyGyro-mean()-Y
   * 426 fBodyGyro-mean()-Z
   * 427 fBodyGyro-std()-X
   * 428 fBodyGyro-std()-Y
   * 429 fBodyGyro-std()-Z
      * (452 fBodyGyro-meanFreq()-X)
      * (453 fBodyGyro-meanFreq()-Y)
      * (454 fBodyGyro-meanFreq()-Z)
   * 503 fBodyAccMag-mean()
   * 504 fBodyAccMag-std()
      * (513 fBodyAccMag-meanFreq())
   * 516 fBodyBodyAccJerkMag-mean()
   * 517 fBodyBodyAccJerkMag-std()
      * (526 fBodyBodyAccJerkMag-meanFreq())
   * 529 fBodyBodyGyroMag-mean()
   * 530 fBodyBodyGyroMag-std()
      * (539 fBodyBodyGyroMag-meanFreq())
   * 542 fBodyBodyGyroJerkMag-mean()
   * 543 fBodyBodyGyroJerkMag-std()
      * (552 fBodyBodyGyroJerkMag-meanFreq())
   * 555 angle(tBodyAccMean,gravity)
   * 556 angle(tBodyAccJerkMean),gravityMean)
   * 557 angle(tBodyGyroMean,gravityMean)
   * 558 angle(tBodyGyroJerkMean,gravityMean)
   * 559 angle(X,gravityMean)
   * 560 angle(Y,gravityMean)
   * 561 angle(Z,gravityMean)
   
3. Use descriptive activity names to name the activities in the data set
   See activity_labels.txt
   
4. Appropriately labels the data set with descriptive variable names.
   * Use variables names from features.txt instead of V1:V561
   
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

6. Please upload the tidy data set created in step 5 of the instructions. Please upload your data set as a txt file created with write.table() using row.name=FALSE.
   

## First Exploration of the Data
### test
```{r eval=FALSE}
X_test <- read.table("UCI\ HAR\ Dataset/test/X_test.txt")
dim(X_test)
# 2947  561
``` 

```{r eval=FALSE}
subject_test <- read.table("UCI\ HAR\ Dataset/test/subject_test.txt") 
dim(subject_test)
# 2947    1
``` 

```{r eval=FALSE}
y_test <- read.table("UCI\ HAR\ Dataset/test/y_test.txt")  
dim(y_test)
# 2947    1
``` 

```{r eval=FALSE}
body_acc_x_test <- read.table("UCI\ HAR\ Dataset/test/Inertial\ Signals/body_acc_x_test.txt")
dim(body_acc_x_test)
# 2947  128
``` 

### train
```{r eval=FALSE}
X_train <- read.table("UCI\ HAR\ Dataset/train/X_train.txt")
dim(X_train)
# 7352  561
``` 

```{r eval=FALSE}
subject_train <- read.table("UCI\ HAR\ Dataset/train/subject_train.txt")
dim(subject_train)
# 7352    1
``` 

```{r eval=FALSE}
y_train <- read.table("UCI\ HAR\ Dataset/train/y_train.txt")
dim(y_train)
# 7352    1 
``` 

```{r eval=FALSE}
body_acc_x_train <- read.table("UCI\ HAR\ Dataset/train/Inertial\ Signals/body_acc_x_train.txt")
dim(body_acc_x_train)
# 7352  128
``` 

## Solution: Steps 1-5 & Upload as text file
### 1. Merge the training and the test sets to create one data set.
Use [run_analysis.R](https://github.com/rogerfischer/harus_tidy/blob/master/run_analysis.R), steps 1.1. to 3.1. 
First cbind X, y and subject (the latter two at the end to keep the variable order the same as the variable names), then rbind train and test to get to X, the complete dataset with 10'299 observations and 563 variables

### 2. Extract only the measurements on the mean and standard deviation for each measurement. 
See [Mean and SD variables](https://github.com/rogerfischer/harus_tidy#tidy-dataset)
Create a vector of all variables, then make a selection with these variables on X.

### 3. Use descriptive activity names to name the activities in the data set
Use y_test.txt for activities
msdX$V1.1[msdX$V1.1 == 1] <- "walking" etc.

### 4. Appropriately labels the data set with descriptive variable names.
4.1. Read features from features.txt
4.2. Use only Mean and SD variables from features.txt and add activity and suject
4.3. Apply to variables of the dataset

### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Using group_by and summarise to get the mean of every variable/column by subject and activity

### 6. Please upload the tidy data set created in step 5 of the instructions. 
```{r eval=FALSE}
write.table(data_up, file = "data_up.txt", row.names = FALSE, col.names = TRUE, sep = "\t")
``` 
