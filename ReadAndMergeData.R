# DownloadAndUnzipData.R
# Coursera course "Getting and Cleaning Data"
# Course project

library(LaF)

ReadAndMergeData <- function() {
  # Assuming that the necessary files were downloaded already, they are
  # imported and merged into a single data frame.
  #
  # To save time reading the training and test sets, only the required columns
  # are imported. Futhermore the activity labels will be included into the new
  # dataset in a human readable format. Also the column names are edited to
  # be more human readable.
  #
  # Returns:
  #   Data frame with the merged data set containing type (training/test), 
  #   subject, activity and the measurements.
  
  # Read variable labels of measurements
  label <- read.delim("UCI HAR Dataset/features.txt",
                      header=FALSE, sep=" ",
                      col.names=c("id", "text"),
                      colClasses=c("NULL", "character"))
  # Assemble necessary column indices for reading training and test sets
  error.indices <- grep("(Body)\\1", label$text)
  column.indices <- grep("mean|std", label$text)
  column.indices <- column.indices[which(!(column.indices %in% error.indices))]  
  
  # Edit column names to make them human readable
  label$text <- gsub("\\(\\)", "", label$text)
  label$text <- gsub("^t", "TimeSignal.", label$text)
  label$text <- gsub("^f", "FrequencySignal.", label$text)
  label$text <- gsub("Acc", "Accelerometer", label$text)
  label$text <- gsub("Gyro", "Gyroscope", label$text)
  label$text <- gsub("Jerk", ".Jerk", label$text)
  label$text <- gsub("Mag", ".Magnitude", label$text)
  
  # import training and test set
  laf.output <- laf_open_fwf("UCI HAR Dataset/train/X_train.txt",
                             column_types=rep("numeric", nrow(label)),
                             column_widths=rep(16, nrow(label)),
                             column_names=as.character(label$text))
  training.set <- laf.output[, column.indices]
  laf.output <- laf_open_fwf("UCI HAR Dataset/test/X_test.txt",
                             column_types=rep("numeric", nrow(label)),
                             column_widths=rep(16, nrow(label)),
                             column_names=as.character(label$text))
  test.set <- laf.output[, column.indices]
  
  # merging all training data
  subject <- read.delim("UCI HAR Dataset/train/subject_train.txt",
                        header=FALSE, col.names="subject")
  activity <- read.delim("UCI HAR Dataset/train/y_train.txt",
                         header=FALSE, col.names="activity")
  training.set <- cbind(set.type=rep("training", nrow(training.set)),
                        subject,
                        activity,
                        training.set)
  
  # merging all test data
  subject <- read.delim("UCI HAR Dataset/test/subject_test.txt",
                        header=FALSE, col.names="subject")
  activity <- read.delim("UCI HAR Dataset/test/y_test.txt",
                         header=FALSE, col.names="activity")
  test.set <- cbind(set.type=rep("test", nrow(test.set)),
                    subject,
                    activity,
                    test.set)
  
  # mergint trainings and test data
  merged.set <- rbind(training.set, test.set)
  merged.set$subject <- factor(merged.set$subject)
  
  # Making activity info human readable
  label <- read.delim("UCI HAR Dataset/activity_labels.txt",
                      header=FALSE, sep=" ",
                      col.names=c("id", "activity"))  
  merged.set$activity <- factor(merged.set$activity,
                                levels=label$id,
                                labels=label$activity)
  merged.set
}