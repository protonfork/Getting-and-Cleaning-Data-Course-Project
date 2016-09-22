# run_analysis.R
#
# This script execute an analysis of Human Activity Recognition Using Smartphones Data Set
#
#
rm(list=ls())
source("datapaths.R")
library(dplyr)

# init file paths

initDataPath()

# Step 1 - Merges the training and the test sets to create one data set.
# Step 1.1 - Gather column names of measure
features <- read.table(featuresPath)
features[,2] <- as.character(features[,2]) # remove factor for later use

# Step 1.2 - Gather activity names
activities <- read.table(activitylabelsPath)
activities[,2] <- as.character(activities[,2]) # remove factor for later use

# Setp 1.3 read train set and set names
subjectstrain <- read.table(subjecttrainPath)
names(subjectstrain)[1] <- "SubjectId"

xtrain <- read.table(xtrainsetPath)
names(xtrain) <- features[,2]

# Uses descriptive activity names
ytrain <- read.table(ytrainPath) %>% merge(activities)
names(ytrain) <- c("ActivityId", "Activity")

trainData <- cbind(subjectstrain, ytrain, xtrain)

# Step 1.4 read test set and set names
subjectstest <- read.table(subjecttestPath)
names(subjectstest)[1] <- "SubjectId"

xtest <- read.table(xtestsetPath)
names(xtest) <- features[,2]

# Uses descriptive activity names
ytest <- read.table(ytestPath) %>% merge(activities) # Uses descriptive activity names
names(ytest) <- c("ActivityId", "Activity")

testData <- cbind(subjectstest, ytest, xtest)

# merge the two set into one set of data
DataSet <- rbind(testData, trainData)

# Step 2 - Extracts only the measuretments on the mean and standard deviation for each measurement. 
# Step 2.1 build list of names to keep in the data set
nameslist <- grep("^[fb]*[Mm]ean|[Ss]td*",names(DataSet))
nameslist <- c(1:3,nameslist)   # column 1:3 being those added from subject & y sets
DataSet <- DataSet[nameslist]

# Step 4 - Appropriately labels the data set with descriptive variable names. 
names(DataSet) <- sub("mean[(][])]", ": Mean",names(DataSet))
names(DataSet) <- sub("std[(][])]", ": Standard Deviation",names(DataSet))
names(DataSet) <- sub("^t", "[Time Domain] ",names(DataSet))
names(DataSet) <- sub("^f", "[Frequency Domain] ",names(DataSet))
names(DataSet) <- sub("[(][])]", "",names(DataSet))
names(DataSet) <- sub("[-]", " ",names(DataSet))
names(DataSet) <- sub("[Bb]ody", "Body ",names(DataSet))
names(DataSet) <- sub("[Gg]yro", "Gyroscope ",names(DataSet))
names(DataSet) <- sub("[Aa]cc", "Acceleration ",names(DataSet))
names(DataSet) <- sub("[Gg]ravity", "Gravity ",names(DataSet))
names(DataSet) <- sub("JerkMag", "Jerk Magnitude",names(DataSet))


# Step 5 - From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.


