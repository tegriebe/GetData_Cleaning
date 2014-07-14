DownloadData <- function() {
  # Downloads the necessary data for the assignment.
  
  file.name <- "getdata-projectfiles-UCI HAR Dataset.zip"
  source.url <- paste0("https://d396qusza40orc.cloudfront.net/",
                       "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
  
  if (!file.exists(file.name)) {
    #download.file(source.url, file.name, method="curl")
    download.file(source.url, file.name)
    
    # store and save time of download
    write(paste("ZIP-file downloaded at:", format(Sys.time(), usetz=TRUE)), 
          "DownloadInfo.md")
    
    # unzip 
    unzip(file.name)
  }
}