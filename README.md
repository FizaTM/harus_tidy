# Human Activity Recognition Using Smartphones Tidy Dataset
### https://github.com/rogerfischer/harus_tidy

Overview

* Dataset
* Task
* Download and Unzip
* Directory Structure
* First Exploration of the Data

## Dataset
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

## TASK

You will be required to submit: 
1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis, and 
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
4. You should also include a README.md in the repo with your scripts. 
This repo explains how all of the scripts work and how they are connected.  

### TIDY DATASET
1. Merge the training and the test sets to create one data set.
   Probable solution: merged data frame <- rbind(data frameA, data frameB)
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## DOWNLOAD AND UNZIP

### SETWD()
setwd("/Users/rogerfischer/datasciencecoursera/getdata/course_project")

### DOWNLOAD THE FILE
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# create the placeholder file
file = "data.zip"
# download into the placeholder file
download.file(fileUrl, destfile = file, method = "curl")
dateDownloaded <- date()
# dateDownloaded  # "Sat Feb  7 17:11:46 2015"

### UNZIP THE FILE
# unzip the file to the zip directory
unzip(file, exdir = ".", overwrite = TRUE)

## DIRECTORY STRUCTURE: UCI HAR Dataset
* - README.txt    
* - activity_labels.txt	
* - features.txt		
* - features_info.txt	
* - test
  *  -- X_test.txt  	
  *  -- subject_test.txt
  *  -- y_test.txt
  * -- Inertial\ Signals
    * --- body_acc_x_test.txt  
    * --- body_acc_y_test.txt  
    * --- body_acc_z_test.txt	
    * --- body_gyro_x_test.txt
    * --- body_gyro_y_test.txt
    * --- body_gyro_z_test.txt
    * --- total_acc_x_test.txt
    * --- total_acc_y_test.tx
    * --- total_acc_z_test.txt
* - train
  * -- X_train.txt  	
  * -- subject_train.txt	
  * -- y_train.txt
  * -- Inertial\ Signals
    * --- body_acc_x_train.txt
    * --- body_acc_y_train.txt
    * --- body_acc_z_train.txt  
    * --- body_gyro_x_train.txt  
    * --- body_gyro_y_train.txt  
    * --- body_gyro_z_train.txt	
    * --- total_acc_x_train.txt	
    * --- total_acc_y_train.txt
    * --- total_acc_z_train.txt


## FIRST EXPLORATION OF THE DATA
test
```{r eval=FALSE}
X_test <- read.table("UCI\ HAR\ Dataset/test/X_test.txt")
dim(X_test)
``` 2947  561
```{r eval=FALSE}
subject_test <- read.table("UCI\ HAR\ Dataset/test/subject_test.txt") 
dim(subject_test)
``` 2947    1
```{r eval=FALSE}
y_test <- read.table("UCI\ HAR\ Dataset/test/y_test.txt") # dim: 
dim(y_test) 
``` 2947    1

train
```{r eval=FALSE}
X_train <- read.table("UCI\ HAR\ Dataset/train/X_train.txt")
dim(X_train)
``` 7352  561
```{r eval=FALSE}
subject_train <- read.table("UCI\ HAR\ Dataset/train/subject_train.txt")
dim(subject_train)
``` 7352    1
```{r eval=FALSE}
y_train <- read.table("UCI\ HAR\ Dataset/train/y_train.txt")
dim(y_train)
``` 7352    1 
