# run_analysis.R
# Coursera course "Getting and Cleaning Data"
# Course project

source("DownloadData.R")
source("ReadData.R")

# Download and unzip data if not already present.
DownloadData()

# Read data into several data frames
dfs <- ReadData()

# Add training/test label to training and test set  
# and combine subject id and activity id with training and test set
with(dfs, {
  dfs$training.x <<- cbind(rep("training", nrow(training.x)),
                        training.subject, training.activity, training.x)
  dfs$test.x <<- cbind(rep("test", nrow(test.x)),
                       test.subject, test.activity, test.x)
})
