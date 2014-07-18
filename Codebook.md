# Codebook

The list below is formatted as follows:
```
<variable name>         <variable type>
    <description>
                        <domain>
```
      
```
subject                 factor 
    Id of subject participated in the experiment
                        1..30

activity                factor
    Activity the subject performed
                        WALKING
                        WALKING_UPSTAIRS
                        WALKING_DOWNSTAIRS
                        SITTING
                        STANDING
                        LAYING
      
tBodyAcc.mean.X                     
tBodyAcc.mean.Y
tBodyAcc.mean.Z         numeric 
    Average of time domain signals of body accelerometer 
    for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
tBodyAcc.std.X                     
tBodyAcc.std.Y
tBodyAcc.std.Z          numeric 
    Standard deviation of time domain signals of body accelerometer 
    for X-, Y- and Z-axis.      
                        -1.0 - 1.0
    
tGravityAcc.mean.X                     
tGravityAcc.mean.Y
tGravityAcc.mean.Z      numeric 
    Average of time domain signals of gravity accelerometer 
    for X-, Y- and Z-axis.
                        -1.0 - 1.0
    
tGravityAcc.std.X                     
tGravityAcc.std.Y
tGravityAcc.std.Z       numeric 
    Standard deviation of time domain signals of gravity accelerometer 
    for X-, Y- and Z-axis.    
                        -1.0 - 1.0
                  
tBodyAccJerk.mean.X                     
tBodyAccJerk.mean.Y
tBodyAccJerk.mean.Z     numeric 
    Average of Jerk signals of body accelerometer for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
tBodyAccJerk.std.X                     
tBodyAccJerk.std.Y
tBodyAccJerk.std.Z      numeric 
    Standard deviation of Jerk signals of body accelerometer 
    for X-, Y- and Z-axis.      
                        -1.0 - 1.0    
              
tBodyGyro.mean.X                     
tBodyGyro.mean.Y
tBodyGyro.mean.Z        numeric 
    Average of time domain signals of body gyroscope for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
tBodyGyro.std.X                     
tBodyGyro.std.Y
tBodyGyro.std.Z         numeric 
    Standard deviation of time domain signals of body gyroscope
    for X-, Y- and Z-axis.      
                        -1.0 - 1.0      
                        
tBodyGyroJerk.mean.X                     
tBodyGyroJerk.mean.Y
tBodyGyroJerk.mean.Z    numeric 
    Average of Jerk signals of body gyroscope for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
tBodyGyroJerk.std.X                     
tBodyGyroJerk.std.Y
tBodyGyroJerk.std.Z     numeric 
    Standard deviation of Jerk signals of body gyroscope for X-, Y- and Z-axis.      
                        -1.0 - 1.0 
                        
tBodyAccMag.mean        numeric 
    Average of magnitude of time domain signals of body accelerometer 
    for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
tBodyAccMag.std         numeric 
    Standard deviation of magnitude of time domain signals of body accelerometer 
    for X-, Y- and Z-axis.      
                        -1.0 - 1.0   
                        
tGravityAccMag.mean     numeric 
    Average of magnitude of time domain signals of gravity accelerometer 
    for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
tGravityAccMag.std      numeric 
    Standard deviation of magnitude of time domain signals 
    of gravity accelerometer for X-, Y- and Z-axis.      
                        -1.0 - 1.0 

tBodyAccJerkMag.mean    numeric 
    Average of magnitude of Jerk signals of body accelerometer 
    for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
tBodyAccJerkMag.std     numeric 
    Standard deviation of magnitude of Jerk signals of body accelerometer 
    for X-, Y- and Z-axis.      
                        -1.0 - 1.0  

tBodyGyroMag.mean       numeric 
    Average of magnitude of time domain signals of body gyroscope
    for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
tBodyGyroMag.std        numeric 
    Standard deviation of magnitude of time domain signals of body gyroscope 
    for X-, Y- and Z-axis.      
                        -1.0 - 1.0   

tBodyGyroJerkMag.mean   numeric 
    Average of magnitude of Jerk signals of body gyroscope 
    for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
tBodyGyroJerkMag.std    numeric 
    Standard deviation of magnitude of Jerk signals of body gyroscope
    for X-, Y- and Z-axis.      
                        -1.0 - 1.0  

fBodyAcc.mean.X                     
fBodyAcc.mean.Y
fBodyAcc.mean.Z         numeric 
    Average of Fast Fourier transformed time domain signals 
    of body accelerometer for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
fBodyAcc.std.X                     
fBodyAcc.std.Y
fBodyAcc.std.Z          numeric 
    Standard deviation of Fast Fourier transformed time domain signals 
    of body accelerometer for X-, Y- and Z-axis.      
                        -1.0 - 1.0

fBodyAccJerk.mean.X                     
fBodyAccJerk.mean.Y
fBodyAccJerk.mean.Z     numeric 
    Average of Jerk signals of body accelerometer for X-, Y- and Z-axis.
    The time domain signals used to calculate the Jerk signals were transformed
    using the Fast Fourier Transform.
                        -1.0 - 1.0
                  
fBodyAccJerk.std.X                     
fBodyAccJerk.std.Y
fBodyAccJerk.std.Z      numeric 
    Standard deviation of Jerk signals of body accelerometer 
    for X-, Y- and Z-axis.      
    The time domain signals used to calculate the Jerk signals were transformed
    using the Fast Fourier Transform.
                        -1.0 - 1.0  

fBodyGyroJerk.mean.X                     
fBodyGyroJerk.mean.Y
fBodyGyroJerk.mean.Z    numeric 
    Average of Jerk signals of body gyroscope for X-, Y- and Z-axis.
    The time domain signals used to calculate the Jerk signals were transformed
    using the Fast Fourier Transform.
                        -1.0 - 1.0
                  
fBodyGyroJerk.std.X                     
fBodyGyroJerk.std.Y
fBodyGyroJerk.std.Z     numeric 
    Standard deviation of Jerk signals of body gyroscope for X-, Y- and Z-axis.      
    The time domain signals used to calculate the Jerk signals were transformed
    using the Fast Fourier Transform.
                        -1.0 - 1.0 
                        
fBodyAccMag.mean        numeric 
    Average of magnitude of Fast Fouier transformed time domain signals 
    of body accelerometer for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
fBodyAccMag.std         numeric 
    Standard deviation of magnitude of Fast Fourier transformed time domain   
    signals of body accelerometer for X-, Y- and Z-axis.      
                        -1.0 - 1.0   

fBodyAccJerkMag.mean    numeric 
    Average of magnitude of Jerk signals of body accelerometer 
    for X-, Y- and Z-axis.
    The time domain signals used to calculate the Jerk signals were transformed
    using the Fast Fourier Transform.
                        -1.0 - 1.0
                  
fBodyAccJerkMag.std     numeric 
    Standard deviation of magnitude of Jerk signals of body accelerometer 
    for X-, Y- and Z-axis.      
    The time domain signals used to calculate the Jerk signals were transformed
    using the Fast Fourier Transform.
                        -1.0 - 1.0 
                        
fBodyGyroMag.mean       numeric 
    Average of magnitude of Fast Fourier transformed time domain signals 
    of body gyroscope for X-, Y- and Z-axis.
                        -1.0 - 1.0
                  
fBodyGyroMag.std        numeric 
    Standard deviation of magnitude of Fast Fourier transformed time domain 
    signals of body gyroscope for X-, Y- and Z-axis.      
                        -1.0 - 1.0   

tBodyGyroJerkMag.mean   numeric 
    Average of magnitude of Jerk signals of body gyroscope 
    for X-, Y- and Z-axis.
    The time domain signals used to calculate the Jerk signals were transformed
    using the Fast Fourier Transform.
                        -1.0 - 1.0
                  
tBodyGyroJerkMag.std    numeric 
    Standard deviation of magnitude of Jerk signals of body gyroscope
    for X-, Y- and Z-axis.      
    The time domain signals used to calculate the Jerk signals were transformed
    using the Fast Fourier Transform.
                        -1.0 - 1.0                          
```