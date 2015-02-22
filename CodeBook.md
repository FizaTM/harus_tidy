# CodeBook

The code book describes the variables, the data, and any transformations or work that was performed to clean up the data.

## Dataset
Zipped data for the project: 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

The [dataset](https://github.com/rogerfischer/harus_tidy#directory-structure-uci-har-dataset) contains several files with test and train data. 
The file to perform the transformations is [run_analysis.R](https://github.com/rogerfischer/harus_tidy/blob/master/run_analysis.R).

We exclude all data in the Inertial Signals folder/directory and work only with:
* X_test.txt
* subject_test.txt
* y_test.txt
and
* X_train.txt
* subject_train.txt
* y_train.txt 

The variables have no names, names can be found in features.txt however. Subjects and activities can be found respectively in suject_test.txt/subject_train.txt and y_test.txt/y_train.txt. 
y_test.txt/y_train.txt numbers are explained in activity_labels.txt.

We bring together X_train.txt, suject_train.txt, y_train.txt, and do the same for the test data. Then we add the test data to the train data to create one dataset containing train and test data. 
We create a subset by choosing the following variables ([See Tidy Dataset, under 2](https://github.com/rogerfischer/harus_tidy#tidy-dataset)).

We change the variables with no names, with the ones from features.txt and add the two variables subject and activity.
We change the numbers from y_test.txt/y_train.txt (now the variable activity) to the real activity labels like "walking", "standing".


## Independent tidy dataset
From the final tidy data set, we create a second, independent tidy data set with the average of each variable for each activity and each subject.

More information is available in the [ReadMe](https://github.com/rogerfischer/harus_tidy/blob/master/README.md).







