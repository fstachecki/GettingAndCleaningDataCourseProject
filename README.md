# Getting And Cleaning Data Course Project
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

## Explanation
dplyr library was used

### Steps
1. Merge the training and the test sets to create one data set using project repository folder
> dataPath <- "UCI HAR Dataset"

1.1 data from 'train/X_train.txt': Training set
> dtTrainSet <- read.table(file.path(dataPath, "train/X_train.txt"))

1.2 data from 'test/X_test.txt': Test set.
> dtTestSet <- read.table(file.path(dataPath, "test/X_test.txt"))

1.3 Merge the training and the test sets
> oneDataset <- rbind(dtTrainSet, dtTestSet)

1.4 name columns of the oneDataset data from 'features.txt': List of all features (second column)
> dtFeatures <- read.table(file.path(dataPath, "features.txt"))
> dtFeatures <- dtFeatures[2]
> colnames(dtFeatures) <-'features'
> names(oneDataset) <- dtFeatures[,]

1.5 remove data from memory
> rm(dtTestSet, dtTrainSet)
> rm(dtFeatures)

2. Extract only the measurements on the mean and standard deviation for each measurement.
> oneDataset <- oneDataset[grepl("std|mean",names(oneDataset), ignore.case = TRUE)]

3. Use descriptive activity names to name the activities in the data set
3.1 Labels - data from 'train/y_train.txt': Training labels.
> dtTrainLabels <- read.table(file.path(dataPath, "train/y_train.txt"))

> data from 'test/y_test.txt': Test labels.
> dtTestLabels <- read.table(file.path(dataPath, "test/y_test.txt"))

train and test labels data merged 
> dtLabels <- rbind(dtTrainLabels, dtTestLabels)

3.2 Subject data from - 'train/subject_train.txt': 
Each row identifies the subject who performed the activity for each window sample. 
Its range is from 1 to 30. 
> dtTrainSubject <- read.table(file.path(dataPath, "train/subject_train.txt"))

data from - 'test/subject_test.txt':
> dtTestSubject <- read.table(file.path(dataPath, "test/subject_test.txt"))

train and test subject data merged
> dtSubject <- rbind(dtTrainSubject, dtTestSubject)
> names(dtSubject) <- "personID"

3.3 Activity labels - data from 'activity_labels.txt': Links the class labels with their activity name
> dtActivityLabels <- read.table(file.path(dataPath, "activity_labels.txt"))

3.4 Merging
merge activity names
> dtLabels <- merge(dtLabels, dtActivityLabels)[2]
> names(dtLabels) <- "activityName"

3.5 remove data from memory
> rm(dtActivityLabels, dtTestSubject, dtTrainSubject, dtTrainLabels, dtTestLabels)

4.Appropriately label the data set with descriptive variable names.
merge oneDataset with subjects and labels
> oneDataset <- cbind(dtSubject, dtLabels, oneDataset)
> rm(dtLabels, dtSubject)

5. From the data set in step 4, creates a second, 
independent tidy data set with the average of each variable for each activity and each subject.
> newDataset <- group_by(oneDataset, personID, activityName) %>%
>   summarise_all(funs(mean))

> write tidyData as a csv to tidyDataset.csv
> write.csv(newDataset, file="tidyDataset.csv")

remove newDataset
> rm(newDataset)