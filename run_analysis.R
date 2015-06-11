## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Load Test Data
dataSubjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
dataActivityTest <- read.table("UCI HAR Dataset/test/y_test.txt")
dataFeaturesTest <- read.table("UCI HAR Dataset/test/X_test.txt")

# Load Training Data
dataSubjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
dataActivityTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
dataFeaturesTrain <- read.table("UCI HAR Dataset/train/X_train.txt")

# Load column names
featureNames <- read.table("UCI HAR Dataset/features.txt")

# Load activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")

# Extract measurements for mean and standard deviation
featureNames <- featureNames[,2]
extractedFeatures <- grep("mean|std",featureNames)

# Name the columns of both test and train data
names(dataFeaturesTest) <- featureNames
names(dataFeaturesTrain) <- featureNames

# Keep only columns for mean and standard deviation measurements
dataFeaturesTest <- dataFeaturesTest[,extractedFeatures]
dataFeaturesTrain <- dataFeaturesTrain[,extractedFeatures]

# Put column names for subject data
names(dataSubjectTest) <- c("Subject")
names(dataSubjectTrain) <- c("Subject")

# Use descriptive activity name mapping
temp <- merge(dataActivityTest,activityLabels,by = "V1", sort = FALSE)
dataActivityTest <- temp
names(dataActivityTest) <- c("Activity ID","Activity Name")
temp <- merge(dataActivityTrain,activityLabels,by = "V1", sort = FALSE)
dataActivityTrain <- temp
names(dataActivityTrain) <- c("Activity ID","Activity Name")

# Merge the test and training data set to create one data set
Data <- rbind(dataFeaturesTest,dataFeaturesTrain)
Subject <- rbind(dataSubjectTest,dataSubjectTrain)
Activity <- rbind(dataActivityTest,dataActivityTrain)

# Label the data set with descriptive variable names
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

# Create a data set with average of each variable for each activity and each subject
output <- aggregate(x = Data,by = list(Activity = Activity$`Activity Name`,Subject = Subject$Subject),mean)

# Output the data set as text file
write.table(output,"tidy_data.txt",row.names = FALSE)
