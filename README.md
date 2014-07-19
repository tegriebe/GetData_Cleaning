GetData_Cleaning
================

This repository contains all scripts and the codebook to finish the course
project. You can find a total of five R scripts:

1. [DownloadAndUnzipData.R](#downloadandunzipdata.r)
1. [ReadAndMergeData.R](#readandmergedata.r)
1. [TidyUpData.R](#tidyupdata.r)
1. [ExportDataAsFile.R](#exportdataasfile.r)
1. [run_analysis.R](#run_analysis.r)

Each of the first four scripts contain only a function named like the file name.
The fifth script "run_analysis.R" uses these functions to create a tidy dataset
and export it to a file.


Data aquisition
---------------
The data used in this project was obtained from a project called 
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) hosted by
the UCI machine learning repository.

The data file itself is downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

For this project, the file was downloaded at:
2014-07-18 09:48:25 CEST.

In the case the link has changed since then, you can change
the value of variable `source.url` in the script "DownloadAndUnzipData.R".


How to use the script
---------------------
Just run the script "run_analysis.R". It will make sure, that the required data
file is downloaded and unziped, merge and tidy up the data and stores the
tidy data set into a file called "tidy.csv". If you want to use another file
name, just change the second parameter of the function call 
to `ExportDataAsFile()`.


Detailed description of the R scripts
----------------------------
In this section a detailed description of each script is given. For a detailed
explanation of the merged and tidied up data please take a look at 
the code book. It can be found in the same directory as this file and is called
"Codebook.md"

### DownloadAndUnzipData.R
The script contains a function called `DownloadAndUnzipData()`. If the Zip-file
wasn't downloaded earlier, it will download the file and stores date and time
of the download in a new file called "DownloadInfo.log". 
After the download is finished, the file is unziped.

### ReadAndMergeData.R
This script includes another function called `ReadAndMergeData()`. As the name
lets assume, it reads all necessary data to merge the training and test sets
and merges the data. It also provides the merged data with some human readable labels for activity and the column names. 

To save some time importing the data, the function tries to read only 
the necessary part of the data out of the files. This way
deleting columns afterwards wouldn't be required. 

Below a detailed step-by-step description of the reading and merging process 
is listed:

1. Read variable labels out of file features.txt and get column indices of 
   each variable containing the mean and standard deviation of the measurements
   (labels with the lowercase text "mean" or "std"). 
1. Delete unnecessary symbols in the variable labels (here: opening and closing
   parenthesis) and make them more human readable.
1. Read only the required columns (see step 1) of training and test sets 
   using fixed width format. Due to memory shortage while using the function
   `read.fwf()`, I used an additional package called "LaF".
1. Read subject and activity for both training and test scenario and 
   merge them to the training and test set. Additionally a extra column called
   "set.type" is added that labels the data sets as "training" or "test" sets. 
   Thereby no information is lost when joining training and test set into  one
   merged data set in the next step.
1. Merge training and test set to one data set. Also the column subject is
   set to "factor"-class.
1. Read the activity labels and relabel the factor column "activity" to
   make the values of that column human readable.
1. Return the merged data set.

### TidyUpData.R
A function called `TidyUpData()` is responsible for creating the "second,
independent tidy data set with the average of each variable for each activity 
and each subject. 
To accomplish this, the merged data of the aforementioned function is used.

First the data set is melted by the ids "subject" and "activity". After that,
the cast function `dcast()` of the package "reshape2" is applied to the melted
data set using the function `mean()`. 

### ExportDataAsFile.R
To export the tidy data set the function `ExportDataAsFile()` is used. 
The file created here is the same file that will be uploaded to the 
coursera course project side. Its stored in a comma separated format with no
row names. The values are not quoted. 
I chose the comma separated format because it is easier to import it again via
the R function `read.csv()` (instead of the fixed width functions mentioned
earlier).

### run_analysis.R
This script just calls the four aforementioned functions in a proper order:

1. Download and unzip the data
2. Read and merge them
3. Tidy the merged date up.
4. Export the tidy data into a local csv-file.