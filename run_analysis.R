# run_analysis.R
# Coursera course "Getting and Cleaning Data"
# Course project

source("DownloadAndUnzipData.R", local=TRUE)
source("ReadAndMergeData.R", local=TRUE)
source("TidyUpData.R", local=TRUE)
source("ExportDataAsFile.R", local=TRUE)


DownloadAndUnzipData()
merged.data <- ReadAndMergeData()
tidy.data <- TidyUpData(merged.data)
ExportDataAsFile(tidy.data, "tidy.csv")