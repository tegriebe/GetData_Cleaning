# Codebook

The list below is formatted as follows:
```
<variable name>         
    <description>
        <variable type> <domain>
```

Every frequency signal was calculated by transforming the time domain signal s
into  frequency domain signals using the Fast Fourier Transform (FFT).
      
```
subject                 
    Id of subject participated in the experiment
        factor          1..30

activity                
    Activity the subject performed
        factor          WALKING
                        WALKING_UPSTAIRS
                        WALKING_DOWNSTAIRS
                        SITTING
                        STANDING
                        LAYING
      
TimeSignal.BodyAccelerometer.mean.X                     
TimeSignal.BodyAccelerometer.mean.Y
TimeSignal.BodyAccelerometer.mean.Z         
    Average value of the mean values of the time domain signals 
    of the body accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
TimeSignal.BodyAccelerometer.std.X                     
TimeSignal.BodyAccelerometer.std.Y
TimeSignal.BodyAccelerometer.std.Z           
    Average value of the standard deviation values of the time domain signals 
    of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0
    
TimeSignal.GravityAccelerometer.mean.X                     
TimeSignal.GravityAccelerometer.mean.Y
TimeSignal.GravityAccelerometer.mean.Z       
    Average value of the mean values of the time domain signals 
    of the gravity accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
    
TimeSignal.GravityAccelerometer.std.X                     
TimeSignal.GravityAccelerometer.std.Y
TimeSignal.GravityAccelerometer.std.Z        
    Average value of the standard deviation values of the time domain signals 
    of the gravity accelerometer for X-, Y- and Z-axis.    
        numeric         -1.0 - 1.0
                  
TimeSignal.BodyAccelerometer.Jerk.mean.X                     
TimeSignal.BodyAccelerometer.Jerk.mean.Y
TimeSignal.BodyAccelerometer.Jerk.mean.Z      
    Average value of the mean values of the Jerk signals 
    of the body accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
TimeSignal.BodyAccelerometer.Jerk.std.X                     
TimeSignal.BodyAccelerometer.Jerk.std.Y
TimeSignal.BodyAccelerometer.Jerk.std.Z       
    Average value of the standard deviation values of the Jerk signals 
    of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0    
              
TimeSignal.BodyGyroscope.mean.X                     
TimeSignal.BodyGyroscope.mean.Y
TimeSignal.BodyGyroscope.mean.Z         
    Average value of the mean values of the time domain signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
TimeSignal.BodyGyroscope.std.X                     
TimeSignal.BodyGyroscope.std.Y
TimeSignal.BodyGyroscope.std.Z          
    Average value of the standard deviation values of the time domain signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0      
                        
TimeSignal.BodyGyroscope.Jerk.mean.X                     
TimeSignal.BodyGyroscope.Jerk.mean.Y
TimeSignal.BodyGyroscope.Jerk.mean.Z     
    Average value of the mean values of the Jerk signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
TimeSignal.BodyGyroscope.Jerk.std.X                     
TimeSignal.BodyGyroscope.Jerk.std.Y
TimeSignal.BodyGyroscope.Jerk.std.Z      
    Average value of the standard deviation values of the Jerk signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0 
                        
TimeSignal.BodyAccelerometer.Magnitude.mean         
    Average value of the mean values of the magnitude of the time domain signals
    of the body accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
TimeSignal.BodyAccelerometer.Magnitude.std          
    Average value of the standard deviation values of the magnitude 
    of the time domain signals of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0   
                        
TimeSignal.GravityAccelerometer.Magnitude.mean      
    Average value of the mean values of the magnitude of the time domain signals
    of the gravity accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
TimeSignal.GravityAccelerometer.Magnitude.std       
    Average value of the standard deviation of the magnitude 
    of the time domain signals of the gravity accelerometer 
    for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0 

TimeSignal.BodyAccelerometer.Jerk.Magnitude.mean     
    Average value of the mean values of the magnitude of the Jerk signals 
    of the body accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
TimeSignal.BodyAccelerometer.Jerk.Magnitude.std      
    Average value of the standard deviation values of the magnitude 
    of the Jerk signals of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0  

TimeSignal.BodyGyroscope.Magnitude.mean        
    Average value of the mean values of the magnitude of the time domain signals
    of the body Gyroscopescope for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
TimeSignal.BodyGyroscope.Magnitude.std         
    Average value of the standard deviation values of the magnitude 
    of the time domain signals of the body Gyroscopescope for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0   

TimeSignal.BodyGyroscope.Jerk.Magnitude.mean    
    Average value of the meanu values of the magnitude of the Jerk signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
TimeSignal.BodyGyroscope.Jerk.Magnitude.std     
    Average value of the standard deviation values of the magnitude 
    of the Jerk signals of the body Gyroscopescope for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0  

FrequencySignal.BodyAccelerometer.mean.X                     
FrequencySignal.BodyAccelerometer.mean.Y
FrequencySignal.BodyAccelerometer.mean.Z          
    Average value of the mean values of the frequency domain signals 
    of the body accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
FrequencySignal.BodyAccelerometer.std.X                     
FrequencySignal.BodyAccelerometer.std.Y
FrequencySignal.BodyAccelerometer.std.Z           
    Average value of the standard deviation values of the frequency domain 
    signals of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0

FrequencySignal.BodyAccelerometer.meanFreq.X        
FrequencySignal.BodyAccelerometer.meanFreq.Y             
FrequencySignal.BodyAccelerometer.meanFreq.Z
    Average value of the mean frequency of the frequency domain 
    signals of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0
                                 
FrequencySignal.BodyAccelerometer.Jerk.mean.X                     
FrequencySignal.BodyAccelerometer.Jerk.mean.Y
FrequencySignal.BodyAccelerometer.Jerk.mean.Z     
    Average value of the mean values of the Jerk signals 
    of the body accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
FrequencySignal.BodyAccelerometer.Jerk.std.X                     
FrequencySignal.BodyAccelerometer.Jerk.std.Y
FrequencySignal.BodyAccelerometer.Jerk.std.Z      
    Average value of the standard deviation values of the Jerk signals 
    of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0 
        
FrequencySignal.BodyAccelerometer.Jerk.meanFreq.X
FrequencySignal.BodyAccelerometer.Jerk.meanFreq.Y        
FrequencySignal.BodyAccelerometer.Jerk.meanFreq.Z
    Average value of the mean frequency of the Jerk signals 
    of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0 

FrequencySignal.BodyGyroscope.Jerk.mean.X                     
FrequencySignal.BodyGyroscope.Jerk.mean.Y
FrequencySignal.BodyGyroscope.Jerk.mean.Z     
    Average value of the mean values of the Jerk signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
FrequencySignal.BodyGyroscope.Jerk.std.X                     
FrequencySignal.BodyGyroscope.Jerk.std.Y
FrequencySignal.BodyGyroscope.Jerk.std.Z      
    Average value of the standard deviation of the Jerk signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0 
  
FrequencySignal.BodyGyroscope.Jerk.meanFreq.X                     
FrequencySignal.BodyGyroscope.Jerk.meanFreq.Y
FrequencySignal.BodyGyroscope.Jerk.meanFreq.Z      
    Average value of the mean frequency of the Jerk signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0   
  
FrequencySignal.BodyAccelerometer.Magnitude.mean         
    Average value of the mean values of the magnitude of the frequency domain 
    signals of the body accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
FrequencySignal.BodyAccelerometer.Magnitude.std          
    Average value of the standard deviation values of the magnitude of 
    the frequency domain signals of the body accelerometer 
    for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0   
        
FrequencySignal.BodyAccelerometer.Magnitude.meanFreq        
    Average value of the mean frequency of the magnitude of 
    the frequency domain signals of the body accelerometer 
    for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0  

FrequencySignal.BodyAccelerometer.Jerk.Magnitude.mean     
    Average value of the mean values of the magnitude of the Jerk signals 
    of the body accelerometer for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
FrequencySignal.BodyAccelerometer.Jerk.Magnitude.std      
    Average value of the standard deviation values of the magnitude 
    of the Jerk signals of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0 
        
FrequencySignal.BodyAccelerometer.Jerk.Magnitude.meanFreq  
    Average value of the mean frequency of the magnitude 
    of the Jerk signals of the body accelerometer for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0 
                        
FrequencySignal.BodyGyroscope.Magnitude.mean        
    Average value of the mean values of the magnitude 
    of the frequency domain signals of the body Gyroscopescope 
    for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
FrequencySignal.BodyGyroscope.Magnitude.std         
    Average value of the standard deviation values of the magnitude 
    of the frequency domain signals of the body Gyroscopescope 
    for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0   
        
FrequencySignal.BodyGyroscope.Magnitude.meanFreq       
    Average value of the mean frequency of the magnitude 
    of the frequency domain signals of the body Gyroscopescope 
    for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0   

FrequencySignal.BodyGyroscope.Jerk.Magnitude.mean    
    Average value of the mean values of the magnitude of the Jerk signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.
        numeric         -1.0 - 1.0
                  
FrequencySignal.BodyGyroscope.Jerk.Magnitude.std     
    Average value of the standard deviation of the magnitude of the Jerk signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0             
        
FrequencySignal.BodyGyroscope.Jerk.Magnitude.meanFreq
    Average value of the mean frequency of the magnitude of the Jerk signals 
    of the body Gyroscopescope for X-, Y- and Z-axis.      
        numeric         -1.0 - 1.0   
```