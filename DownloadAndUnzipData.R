# DownloadAndUnzipData.R
# Coursera course "Getting and Cleaning Data"
# Course project

DownloadAndUnzipData <- function() {
  # Downloads the necessary data for the assignment.
  
  file.name <- "getdata-projectfiles-UCI HAR Dataset.zip"
  source.url <- paste0("https://d396qusza40orc.cloudfront.net/",
                       "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
  
  if (!file.exists(file.name)) {
    # HTTPS sources can only be downloaded using the internal mode on windows
    # machines. But I'm developing on both machines, so ...
    switch(Sys.info()[['sysname']],
           Windows= {download.file(source.url, file.name)},
           Darwin = {download.file(source.url, file.name, method="curl")})
    
    # store and save time of download
    cat("URL: ", source.url, "\n",
        "File: ", file.name, "\n",
        "Downloaded at: ", format(Sys.time(), usetz=TRUE), "\n\n", 
        file="DownloadInfo.log",
        sep="")
    
    # unzip 
    unzip(file.name)
  }
}