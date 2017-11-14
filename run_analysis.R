# 1. Merge the training and the test sets to create one data set.
dataPath <- "UCI HAR Dataset"
## from 'features.txt': List of all features.
dtFeatures <- read.table(file.path(dataPath, "features.txt"))
dtFeatures <- dtFeatures[2]
colnames(dtFeatures) <-'features'
## from 'activity_labels.txt': Links the class labels with their activity name
## from 'train/X_train.txt': Training set
## from 'train/y_train.txt': Training labels.
## from 'test/X_test.txt': Test set.
## from 
## from 
## from 'test/y_test.txt': Test labels.