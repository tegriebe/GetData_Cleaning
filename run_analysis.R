# run_analysis.R
# Coursera course "Getting and Cleaning Data"
# Course project

source("DownloadData.R", local=TRUE)
source("ReadData.R", local=TRUE)

# Download and unzip data if not already present.
DownloadData()

# Read data into several data frames
dfs <- ReadData()
 
# Changing activity information into factor variable and 
# labeling the levels for better readability
with(dfs, {
  dfs$training.activity <<- factor(training.activity[[1]],
                                   levels=activity.labels$id,
                                   labels=activity.labels$text)
  dfs$test.activity <<- factor(test.activity[[1]],
                               levels=activity.labels$id,
                               labels=activity.labels$text)
})

# Deleting unnecessary columns that don't contain the word "mean" or "std"
# to get only the measurements on the mean and standard deviation
with(dfs, {
  dfs$training.x <<- training.x[, grep("mean|std", names(training.x))]
  dfs$test.x <<- test.x[, grep("mean|std", names(test.x))]
})

# Add training/test label to training and test set  
# and combine subject id and activity id with training and test set
with(dfs, {
  dfs$training.x <<- cbind(set.type=rep("training", nrow(training.x)),
                           training.subject, 
                           activity=training.activity, 
                           training.x)
  dfs$test.x <<- cbind(set.type=rep("test", nrow(test.x)),
                       test.subject, 
                       activity=test.activity, 
                       test.x)
})

# "Merging" training and test sets
pre.tidy <- rbind(dfs$training.x, dfs$test.x)

# Tidying up the merged data

