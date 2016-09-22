# datapaths.R
#
# this script initialize vector which point on the data files 
# of the Human Activity Recognition Using Smartphones Data Set
#

initDataPath <- function(){
                # Shows information about the variables used on the feature vector.     
                featureinfoPath <<- './data/features_info.txt'
                # List of all features.
                featuresPath <<- './data/features.txt'
                # Links the class labels with their activity name.
                activitylabelsPath <<- './data/activity_labels.txt'
                # Training set.
                xtrainsetPath <<- './data/train/X_train.txt'
                # Training labels.
                ytrainPath <<- './data/train/y_train.txt'
                # Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
                subjecttrainPath <<- './data/train/subject_train.txt'
                # Test set.
                xtestsetPath <<- './data/test/X_test.txt'
                # Test labels.
                ytestPath <<- './data/test/y_test.txt'
                # Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
                subjecttestPath <<- './data/test/subject_test.txt' 
}