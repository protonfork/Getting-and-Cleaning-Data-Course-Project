# datapaths.R
#
# this script initialize vector which point on the various file 
# of the Human Activity Recognition Using Smartphones Data Set
#

initDataPath <- function(){

featureinfoPath <<- './data/features_info.txt'# Shows information about the variables used on the feature vector.

featuresPath <<- './data/features.txt'# List of all features.

activitylabelsPath <<- './data/activity_labels.txt'# Links the class labels with their activity name.

xtrainsetPath <<- './data/train/X_train.txt'# Training set.

ytrainPath <<- './data/train/y_train.txt'# Training labels.

subjecttrainPath <<- './data/train/subject_train.txt'# Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

xtestsetPath <<- './data/test/X_test.txt'# Test set.

ytestPath <<- './data/test/y_test.txt'# Test labels.

subjecttestPath <<- './data/test/subject_test.txt'# Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

}