# DownloadAndUnzipData.R
# Coursera course "Getting and Cleaning Data"
# Course project

library(reshape2)

TidyUpData <- function(merged.data) {
  # Tidies up the data as requested by the course project.
  #
  # Args:
  #   merged.data: Data merged via function `ReadAndMergeData()`
  #
  # Returns:
  #   A nice small lean tidy data set.
  
  melted.data <- melt(merged.data, id.vars=c("set.type", "subject", "activity"))
  tidy.data <- dcast(melted.data, subject + activity ~ variable, mean)
  tidy.data
}