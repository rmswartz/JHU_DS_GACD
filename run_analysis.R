# Step 1: combine all data into one set
# import raw measurements from test and training data, and label accordingly
raw.data.labels <- read.table("./data/features.txt")
raw.test.data <- read.table("./data/X_test.txt")
names(raw.test.data) <- as.character(raw.data.labels$V2)
raw.train.data <- read.table("./data/X_train.txt")
names(raw.train.data) <- as.character(raw.data.labels$V2)

# combine raw measurements together to form one dataset
raw.data <- rbind(raw.test.data, raw.train.data)

# import and combine subject reference from test and training data, and label
# accordingly
raw.test.subjects <- read.table("./data/subject_test.txt")
raw.train.subjects <- read.table("./data/subject_train.txt")
raw.subjects <- rbind(raw.test.subjects, raw.train.subjects)
names(raw.subjects) <- "subjects"

# import and combine activity label reference from test and training data, and 
# label accordingly
raw.test.activities <- read.table("./data/y_test.txt")
raw.train.activities <- read.table("./data/y_train.txt")
raw.activities <- rbind(raw.test.activities, raw.train.activities)
names(raw.activities) <- "activity.label"

# combine all imports together to finalize and preserve raw data
raw.data <- cbind(raw.subjects, raw.activities, raw.data)


# Step 2: extract the mean and standard deviation measures from the raw data
# subset the raw data to just measures of interest
clean.data <- raw.data[names(raw.data) %in% c("subjects", "activity.label") | 
                             grepl("[Mm][Ee][Aa][Nn]", names(raw.data)) == TRUE | 
                             grepl("[Ss][Tt][Dd]", names(raw.data))]

# Step 3: replace integer labels with descriptive activity names
# first, make labels a factor
clean.data$activity.label <- as.factor(clean.data$activity.label)
# next, use plyr package's 'mapvalues' function to make the conversion
library(plyr)
clean.data$activity.label <- mapvalues(clean.data$activity.label, 
                                       from = c(1, 2, 3, 4, 5, 6), 
                                       to = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

# Step 4: rename variables of clean data to be more "descriptive" (whatever that means)
names(clean.data) <- c("Subject", "Activity", "TBodyAccMeanX", "TBodyAccMeanY", 
                       "TBodyAccMeanZ", "TBodyAccSDX", "TBodyAccSDY", "TBodyAccSDZ", 
                       "GravityAccMeanX", "GravityAccMeanY", "GravityAccMeanZ", 
                       "GravityAccSDX", "GravityAccSDY", "GravityAccSDZ", "TBodyAccJerkMeanX", 
                       "TBodyAccJerkMeanY", "TBodyAccJerkMeanZ", "TBodyAccJerkSDX1", 
                       "TBodyAccJerkSDY", "TBodyAccJerkSDZ", "TBodyGyroMeanX", "TBodyGyroMeanY", 
                       "TBodyGyroMeanZ", "TBodyGyroSDX1", "TBodyGyroSDY", "TBodyGyroSDZ", 
                       "BodyGyroJerkMeanX", "BodyGyroJerkMeanY", "BodyGyroJerkMeanZ", 
                       "BodyGyroJerkSDX", "BodyGyroJerkSDY", "BodyGyroJerkSDZ", 
                       "TBodyAccMagMean", "TBodyAccMagSD", "GravityAccMagMean", 
                       "GravityAccMagSD", "BodyAccJerkMagMean", "BodyAccJerkMagSD", 
                       "BodyGyroMagMean", "BodyGyroMagSD", "BodyGyroJerkMagMean", 
                       "BodyGyroJerkMagSD", "FBodyAccMeanX", "FBodyAccMeanY", 
                       "FBodyAccMeanZ", "FBodyAccSDX", "FBodyAccSDY", "FBodyAccSDZ", 
                       "FBodyAccJerkMeanX", "FBodyAccJerkMeanY", "FBodyAccJerkMeanZ", 
                       "FBodyAccJerkSDX", "FBodyAccJerkSDY", "FBodyAccJerkSDZ", 
                       "BodyAccJerkMeanFreqX", "BodyAccJerkMeanFreqY", "BodyAccJerkMeanFreqZ", 
                       "FBodyGyroMeanX", "FBodyGyroMeanY", "FBodyGyroMeanZ", "FBodyGyroSDX", 
                       "FBodyGyroSDY", "FBodyGyroSDZ", "BodyGyroMeanFreq", "BodyGyroMeanFreq", 
                       "BodyGyroMeanFreq", "FBodyAccMagMean", "FBodyAccMagSD", 
                       "BodyBodyAccJerkMagMean", "BodyBodyAccJerkMagSD", "BodyBodyGyroMagMean", 
                       "BodyBodyGyroMagSD", "BodyBodyGyroJerkMagMean", "BodyBodyGyroJerkMagSD", 
                       "AngleBodyAccMeanGravity", "AngleBodyAccJerkMeanGravityMean", 
                       "AngleBodyGyroMeanGravityMean", "AngleBodyGyroJerkMeanGravityMean", 
                       "AngleXGravityMean", "AngleYGravityMean", "AngleZGravityMean")
# ensure Subject variable is factor
clean.data$Subject <- as.factor(clean.data$Subject)

# Step 5: create and output a tidy dataset with the mean of each variable for 
# each subject and each activity

# use the 'reshape2' package to melt the data and recast into desired configuration
library(reshape2)
clean.data.melt <- melt(clean.data, id = c("Subject", "Activity"))

# now, cast data to calculate the mean for each variable for every Subject and Activity
final.data <- dcast(clean.data.melt, Subject + Activity ~ variable, fun.aggregate = mean)

# write the final result to a .txt for the deliverable
write.table(final.data, file = "final_data.txt")