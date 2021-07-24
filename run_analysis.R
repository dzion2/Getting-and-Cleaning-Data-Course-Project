library(dplyr)
library(stringr)

# Downloading the data set
if (!dir.exists("UCI HAR Dataset")) {
  download.file(
    "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
    destfile = "dataset.zip"
  )
  
  unzip("dataset.zip")
}


# 1. Merges the training and the test sets to create one data set.
test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")

train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")

full <- rbind(
  cbind(test_subject, test_y, test_x), cbind(train_subject, train_y, train_x)
)

features <- sapply(
  readLines("UCI HAR Dataset/features.txt"), sub,
  pattern = ".* ", replacement = ""
)

names(full) <- c("Subject", "Activity", features)

# 2. Extracts only the measurements on the mean and standard deviation for
#    each measurement.
full <- full %>%
  select(matches("mean\\(\\)|std\\(\\)|Subject|Activity", ignore.case = FALSE))

# 3. Uses descriptive activity names to name the activities in the data set.
activity_labels <- sub(
  ".* ", "", readLines("UCI HAR Dataset/activity_labels.txt")
)

activity_labels <- sub(" ", "", str_to_title(sub("_", " ", activity_labels)))

full$Activity <- sapply(full$Activity, function(x) activity_labels[as.numeric(x)])

# 4. Appropriately labels the data set with descriptive variable names.
names(full) <- sub("\\-mean\\(\\)\\-", "Mean", names(full))
names(full) <- sub("\\-mean\\(\\)", "Mean", names(full))
names(full) <- sub("\\-std\\(\\)\\-", "Std", names(full))
names(full) <- sub("\\-std\\(\\)", "Std", names(full))
names(full) <- sub("^t", "Time", names(full))
names(full) <- sub("^f", "Frequency", names(full))
names(full) <- sub("BodyBody", "Body", names(full))

# 5. From the data set in step 4, creates a second, independent tidy
# data set with the average of each variable for each activity and each subject.
full_avg <- full %>%
  group_by(Activity, Subject) %>%
  summarize(across(everything(), list(mean)))

names(full_avg) <- sub("_1", "", names(full_avg))
names(full_avg)[3:ncol(full_avg)] <- paste0("Average", names(full_avg)[3:ncol(full_avg)])

# Save data sets
write.table(full, "first_dataset.txt", row.name=FALSE)
write.table(full_avg, "second_dataset.txt", row.name=FALSE)

