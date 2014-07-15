library(LaF)

ReadData <- function() {
  # Assuming that the necessary data was downloaded already, it reads
  # all necessary files into data frames.
  #
  # For setting the column names when reading the x-test and x-training sets
  # the info contained in the file "features.txt" is used.
  #
  # In this assignment the necessary files are: 
  # - UCI HAR Dataset/activity_labels.txt
  # - UCI HAR Dataset/features.txt
  # - UCI HAR Dataset/train/(subject|X|y)_train.txt
  # - UCI HAR Dataset/test/(subject|X|y)_test.txt
  #
  # Returns:
  #   List of data frames representing the following files:
  #   - activity.labels: activity_labels.txt
  #   - train.subject: subject_train.txt
  #   - train.x: X_train.txt
  #   - train.activity: y_train.txt
  #   - test.subject: subject_test.txt
  #   - test.x: X_test.txt
  #   - text.activity: y_test.txt
  
  activity.labels <- read.delim("UCI HAR Dataset/activity_labels.txt",
                                header=FALSE, sep=" ", 
                                col.names=c("id", "text"))
  variable.labels <- read.delim("UCI HAR Dataset/features.txt",
                                header=FALSE, sep=" ",
                                col.names=c("id", "name"))
  # Get rid of brackets in variable labels
  variable.labels$name <- gsub("\\(\\)", "", variable.labels$name)
  
  training.subject <- read.delim("UCI HAR Dataset/train/subject_train.txt", 
                                 header=FALSE, 
                                 col.names="subject.id")
  # LaF package was necessary because read.fwf wasn't able to import
  # the training set due to memory shortage
  laf.data <- laf_open_fwf("UCI HAR Dataset/train/X_train.txt",
                           column_types=rep("numeric", nrow(variable.labels)),
                           column_widths=rep(16, nrow(variable.labels)),
                           column_names=as.character(variable.labels$name))
  training.x <- laf.data[,]  # load all data in training.x
  training.y <- read.delim("UCI HAR Dataset/train/y_train.txt",
                           header=FALSE, 
                           col.names="activity.id")
  
  test.subject <- read.delim("UCI HAR Dataset/test/subject_test.txt",
                             header=FALSE, 
                             col.names="subject.id")
  laf.data <- laf_open_fwf("UCI HAR Dataset/test/X_test.txt",
                           column_types=rep("numeric", nrow(variable.labels)),
                           column_widths=rep(16, nrow(variable.labels)),
                           column_names=as.character(variable.labels$name))
  test.x <- laf.data[,]
  test.y <- read.delim("UCI HAR Dataset/test/y_test.txt",
                       header=FALSE, 
                       col.names="activity.id")
  
  list(activity.labels   = activity.labels,
       training.subject  = training.subject,
       training.x        = training.x,
       training.activity = training.y,
       test.subject      = test.subject,
       test.x            = test.x,
       test.activity     = test.y)
}