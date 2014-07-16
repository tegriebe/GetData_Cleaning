GetData_Cleaning
================

This repository contains all scripts and the codebook to finish the course
project. You can find a total of five R scripts:

1. DownloadAndUnzipData.R
1. ReadAndMergeData.R
1. TidyUpData.R
1. ExportDataAsFile.R
1. run_analysis.R

Each of the first four scripts contain only a function named like the file name.
The fifth script "run_analysis.R" uses these functions to create a tidy dataset
and export it to a file.

Below a detailed description of each script can be found.


Description of the R scripts
----------------------------

### DownloadAndUnzipData.R
The script contains a function called `DownloadAndUnzipData()`. If the Zip-file
wasn't downloaded earlier, it will download the file and stores date and time
of the download in a new file called "DownloadInfo.log". 
After the download is finished, the file gets unziped.

### ReadAndMergeData.R
This script includes another function called `ReadAndMergeData()`. As the name
lets assume, it reads all necessary data to merge the training and test sets
and merges the data. It also provides the merged data with some human readable labels for activity and the column names. The column names of the measurement variables are only slightly edited to get rid of some unwanted symbols. 
Overall they are quite readable and above all understandable in my opinion.

To save some time importing the data, the function tries to read only 
the necessary part of the data out of the files. This way
deleting columns afterwards wouldn't be required. 

### TidyUpData.R
A function called `TidyUpData()` is responsible for creating the "second,
independent tidy data set with the average of each variable for each activity 
and each subject.

To accomplish this, the merged data of the aforementioned function is used.

### ExportDataAsFile.R
To export the tidy data set the function `ExportDataAsFile()` is used. 
The file created here is the same file that will be uploaded to the 
coursera course project side.

### run_analysis.R
This script just calls the four aforementioned functions in a proper order. 