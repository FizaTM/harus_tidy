# 0. Assumption is that the dataset is loaded in your wd
## Setting my own wd
## setwd("/Users/rogerfischer/datasciencecoursera/getdata/course_project")

# 1. Merge the training and the test sets to create one data set.
## First cbind subject, y and X, then rbind train and test to get to X

## 1.1. Traindata
X_train <- read.table("UCI\ HAR\ Dataset/train/X_train.txt")
subject_train <- read.table("UCI\ HAR\ Dataset/train/subject_train.txt")
y_train <- read.table("UCI\ HAR\ Dataset/train/y_train.txt")

## 2.2. Add subject_train and y_train to X_test
X_train_new <- cbind(X_train, y_train, subject_train)

## 2.1. Testdata 
X_test <- read.table("UCI\ HAR\ Dataset/test/X_test.txt")
subject_test <- read.table("UCI\ HAR\ Dataset/test/subject_test.txt")
y_test <- read.table("UCI\ HAR\ Dataset/test/y_test.txt")

## 2.2. Add subject_test and y_test to X_test
X_test_new <- cbind(X_test, y_test, subject_test)

## 3.1
X <- rbind(X_train_new, X_test_new)


# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
## See https://github.com/rogerfischer/harus_tidy#tidy-dataset

a1_6 <- 1:6
b41_46 <- 41:46
c81_86 <- 81:86
d121_126 <- 121:126
e161_166 <- 161:166
f201_202 <- 201:202
g214_215 <- 214:215
h227_228 <- 227:228
i240_241 <- 240:241
j253_254 <- 253:254
k266_271 <- 266:271
l295_296 <- 295:296
m373_375 <- 373:375
n424_429 <- 424:429
o452_454 <- 452:454
p503_504 <- 503:504
q513 <- 513
r516_517 <- 516:517
s526 <- 526
t529_530 <- 529:530
u539 <- 539
v542_543 <- 542:543
w552 <- 552
x555_561 <- 555:561

mean_and_sd <- c(a1_6, b41_46, c81_86, d121_126, e161_166, f201_202, g214_215, h227_228, i240_241, j253_254, k266_271, l295_296, m373_375, n424_429, o452_454, p503_504, q513, r516_517, s526, t529_530, u539, v542_543, w552, x555_561)
