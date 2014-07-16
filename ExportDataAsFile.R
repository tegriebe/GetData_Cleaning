# DownloadAndUnzipData.R
# Coursera course "Getting and Cleaning Data"
# Course project

ExportDataAsFile <- function(data.set, file.name) {
  # Exports a data set to a file.
  # 
  # Args:
  #   data.set: Data set that should be stored in a file.
  #   file.name: File name of the file that should be created.
  
  write.csv(data.set, file.name, quote=FALSE, row.names=FALSE)
}