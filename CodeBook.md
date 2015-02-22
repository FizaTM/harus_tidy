# CodeBook

The code book describes the variables, the data, and any transformations or work that was performed to clean up the data.

## Dataset
Zipped data for the project: 
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

The [dataset](https://github.com/rogerfischer/harus_tidy#directory-structure-uci-har-dataset) contains several files with test and train data. 
The variables have no names, names can be found in features.txt however. Subjects and activities can be found respectively in suject_test.txt/subject_train.text and y_test.txt/y_train.txt. 
y_test.txt/y_train.txt numbers are explained in activity_labels.txt.

Then we bring together X_train.txt, suject_train.txt, y_train.txt, and do the same for the test data. Then we add the test data to the train data to create one dataset containing train and test data.
We change the variables with no names, with the ones from features.txt and add the variables subject and activity.

We change the numbers from y_test.txt/y_train.txt to the real activity labels like "walking", "standing".


## Independent tidy dataset
From the final tidy data set, we creates a second, independent tidy data set with the average of each variable for each activity and each subject.

More information is available in the [ReadMe](https://github.com/rogerfischer/harus_tidy/blob/master/README.md).







