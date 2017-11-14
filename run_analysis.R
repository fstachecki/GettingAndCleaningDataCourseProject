library(dplyr)
# 1. Merge the training and the test sets to create one data set.
## Project repository folder
dataPath <- "UCI HAR Dataset"

## 1.1 data from 'train/X_train.txt': Training set
dtTrainSet <- read.table(file.path(dataPath, "train/X_train.txt"))

## 1.2 data from 'test/X_test.txt': Test set.
dtTestSet <- read.table(file.path(dataPath, "test/X_test.txt"))

## 1.3 Merge the training and the test sets
oneDataset <- rbind(dtTrainSet, dtTestSet)

## 1.4 name columns of the oneDataset
## data from 'features.txt': List of all features (second column)
dtFeatures <- read.table(file.path(dataPath, "features.txt"))
dtFeatures <- dtFeatures[2]
colnames(dtFeatures) <-'features'
names(oneDataset) <- dtFeatures[,]

## 1.5 remove data from memory
rm(dtTestSet, dtTrainSet)
rm(dtFeatures)

#2. Extract only the measurements on the mean and standard deviation for each measurement.
oneDataset <- oneDataset[grepl("std|mean",names(oneDataset), ignore.case = TRUE)]

#3. Use descriptive activity names to name the activities in the data set

## 3.1 Labels
## data from 'train/y_train.txt': Training labels.
dtTrainLabels <- read.table(file.path(dataPath, "train/y_train.txt"))

## data from 'test/y_test.txt': Test labels.
dtTestLabels <- read.table(file.path(dataPath, "test/y_test.txt"))

## train and test labels data merged 
dtLabels <- rbind(dtTrainLabels, dtTestLabels)

## 3.2 Subject
## data from - 'train/subject_train.txt': 
## Each row identifies the subject who performed the activity for each window sample. 
## Its range is from 1 to 30. 
dtTrainSubject <- read.table(file.path(dataPath, "train/subject_train.txt"))

## data from - 'test/subject_test.txt':
dtTestSubject <- read.table(file.path(dataPath, "test/subject_test.txt"))

## train and test subject data merged
dtSubject <- rbind(dtTrainSubject, dtTestSubject)
names(dtSubject) <- "personID"

## 3.3 Activity labels
## data from 'activity_labels.txt': Links the class labels with their activity name
dtActivityLabels <- read.table(file.path(dataPath, "activity_labels.txt"))

## 3.4 Merging
## merge activity names
dtLabels <- merge(dtLabels, dtActivityLabels)[2]
names(dtLabels) <- "activityName"

## 3.5 remove data from memory
rm(dtActivityLabels, dtTestSubject, dtTrainSubject, dtTrainLabels, dtTestLabels)

# 4.Appropriately label the data set with descriptive variable names.
## merge oneDataset with subjects and labels
oneDataset <- cbind(dtSubject, dtLabels, oneDataset)
rm(dtLabels, dtSubject)


# 5. From the data set in step 4, creates a second, 
# independent tidy data set with the average of each variable for each activity and each subject.
newDataset <- group_by(oneDataset, personID, activityName) %>%
  summarise_all(funs(mean))

#write tidyData as a csv to tidyDataset.csv
write.csv(newDataset, file="tidyDataset.csv")

#remove tidyData
rm(newDataset)


