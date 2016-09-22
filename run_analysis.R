# run_analysis.R
#
# This script execute an analysis of Human Activity Recognition Using Smartphones Data Set
# The raw dataset provided in two part (Train, Test) and several files is  
# merged in a single data sets
# columns are renamed to be suitable variable names
# finaly, a summary of the dataset, gathering means of measures by 
# activity and subjects is exported to DataSummary.txt
#
# required packages : dplyr
#
#

# loading sources & library
source("datapaths.R")   # list of path to the raw data set
library(dplyr)          # library for data frame manangement

# init of the file paths variables [see datapaths.R for definition]

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
ytrain <- read.table(ytrainPath) %>% inner_join(activities, by = "V1")
names(ytrain) <- c("ActivityId", "Activity")

# Step 1.4 read test set and set names
subjectstest <- read.table(subjecttestPath)
names(subjectstest)[1] <- "SubjectId"

xtest <- read.table(xtestsetPath)
names(xtest) <- features[,2]

# Uses descriptive activity names
ytest <- read.table(ytestPath) %>% inner_join(activities, by = "V1") # Uses descriptive activity names
names(ytest) <- c("ActivityId", "Activity")

# merge the two set into one set of data
trainData <- cbind(subjectstrain, ytrain, xtrain)
testData <- cbind(subjectstest, ytest, xtest)
DataSet <- rbind(testData, trainData)

# Step 2 - Extracts only the measuretments on the mean and standard deviation for each measurement. 
# Step 2.1 build list of names to keep in the data set
nameslist <- grep("(^[^angle])",names(DataSet))
nameslist <- grep("(([Mm]ean)|([Ss]td))",names(DataSet)[nameslist])
nameslist <- c(1:3,nameslist)   # column 1:3 being those added from subject & y sets
# filter dataset columns
DataSet <- DataSet[nameslist]

# Step 4 - Appropriately labels the data set with descriptive variable names. 
names(DataSet) <- gsub("mean[(][])]", "Mean",names(DataSet))
names(DataSet) <- gsub("std[(][])]", "StandardDeviation",names(DataSet))
names(DataSet) <- gsub("[(][])]", "",names(DataSet))
names(DataSet) <- gsub("[-]", "_",names(DataSet))
names(DataSet) <- gsub("[Bb]ody", "Body",names(DataSet))
names(DataSet) <- gsub("[Gg]yro", "Gyroscope",names(DataSet))
names(DataSet) <- gsub("[Aa]cc", "Acceleration",names(DataSet))
names(DataSet) <- gsub("[Gg]ravity", "Gravity",names(DataSet))
names(DataSet) <- gsub("JerkMag", "JerkMagnitude",names(DataSet))
names(DataSet) <- gsub("BodyBody", "Body",names(DataSet))

# Step 5 - From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.

tidy <- group_by(DataSet, SubjectId, Activity) %>% 
        summarize_all(funs(mean)) %>% 
        arrange(SubjectId, ActivityId)
        
write.table(tidy, "./DataSummary.txt", row.names=F, sep="\t")
