#CODEBOOK
## DataSummary.txt 

### Source of Data 
[Original Repository Link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

The initial raw data for this database come from the accelerometer and 
gyroscope 3-axial signals. These time domain signals (prefix 't' to denote time) 
were captured at a constant rate of 50 Hz. Then they were filtered using 
a median filter  and a 3rd order low pass Butterworth filter with a corner frequency 
of 20 Hz to remove noise. 

Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals  using another low pass Butterworth filter with a corner 
frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived 
in time to obtain Jerk signals. Also the magnitude of these three-dimensional 
signals were calculated using the Euclidean norm.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals 
(Note the 'f' to indicate frequency domain signals). 

Value were normalized and bounded between [-1:+1]

### Operation done on the data
The provided data summary is an extract from the whole raw data package. 
Train and Test measurement have been combined into a single data 
set where relationship between Activities, Subjects and Measures have been 
gathered before calculation.

Last Operation consisted into summarizing the measures by calculating the 
mean of each measurement type for each Activity and each Subject. 
            
### Variables

**[1] "SubjectId" **

	* Description : Id of the Experience Volunteer
	* Range : 1 to 30
	* Class : <int>
	* Missing data count : 0
	* Value indicating missing data : NA
	
**[2] "Activity"**                 

	* Description : Name of the activity performed by the Volunteer
	* Range : ("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", 
			"STANDING", "LAYING")
	* Class : <chr>
	* Value indicating missing data : NA
	
**[3] "ActivityId" **                                          
	
	* Description : Id of the activity performed by the Volunteer
	Range : 1 to 6
	* Class : <int>
	* Value indicating missing data : NA
	
**[4] "tBodyAcceleration_Mean_X" **                            
**[5] "tBodyAcceleration_Mean_Y" **                            
**[6] "tBodyAcceleration_Mean_Z" **                            
	
	* Description : Average of the Body Acceleration Mean (in Time Domain) for a 
		Subject/Activity pair in the 3 axial
	Range : -1 to +1
	* Class : <dbl>
	* Unit :  'g's (gravity of earth -> 9.80665 m/seg2). 
	* Value indicating missing data : NA

**[7] "tBodyAcceleration_StandardDeviation_X" **               
**[8] "tBodyAcceleration_StandardDeviation_Y" **               
**[9] "tBodyAcceleration_StandardDeviation_Z" **               
	
	* Description : Average of the Body Acceleration StandardDeviation (in Time Domain) for a 
		Subject/Activity pair in the 3 axial
	Range : -1 to +1
	* Class : <dbl>
	* Unit :  'g's (gravity of earth -> 9.80665 m/seg2). 
	* Value indicating missing data : NA

**[10] "tGravityAcceleration_Mean_X" **                         
**[11] "tGravityAcceleration_Mean_Y" **                         
**[12] "tGravityAcceleration_Mean_Z" **                         
	
	* Description : Average of the Gravity Acceleration Mean(in Time Domain) for a 
		Subject/Activity pair in the 3 axial
	Range : -1 to +1
	* Class : <dbl>
	* Unit :  'g's (gravity of earth -> 9.80665 m/seg2). 
	* Value indicating missing data : NA

**[13] "tGravityAcceleration_StandardDeviation_X" **            
**[14] "tGravityAcceleration_StandardDeviation_Y" **            
**[15] "tGravityAcceleration_StandardDeviation_Z" **            
	
	* Description : Average of  Gravity Acceleration Standard Deviation(in Time Domain) for a 
		Subject/Activity pair in the 3 axial
	Range : -1 to +1
	* Class : <dbl>
	* Unit :  'g's (gravity of earth -> 9.80665 m/seg2). 
	* Value indicating missing data : NA

**[16] "tBodyAccelerationJerk_Mean_X" **                        
**[17] "tBodyAccelerationJerk_Mean_Y" **                        
**[18] "tBodyAccelerationJerk_Mean_Z" **                        
	
	* Description : Average of Body Acceleration Jerk Mean (in Time Domain) for a 
		Subject/Activity pair in the 3 axial
	* Class : <dbl>
	* Unit :  gravity per second (g/s)
	* Value indicating missing data : NA

**[19] "tBodyAccelerationJerk_StandardDeviation_X" **           
**[20] "tBodyAccelerationJerk_StandardDeviation_Y" **           
**[21] "tBodyAccelerationJerk_StandardDeviation_Z" **           
	
	* Description : Average of Body Acceleration Jerk Standard Deviation (in Time Domain) for 
		a Subject/Activity pair in the 3 axial
	* Class : <dbl>
	* Unit :  gravity per second (g/s)
	* Value indicating missing data : NA

**[22] "tBodyGyroscope_Mean_X" **                               
**[23] "tBodyGyroscope_Mean_Y" **                               
**[24] "tBodyGyroscope_Mean_Z" **                               
	
	* Description : Average of the Body Gyroscope Mean (in Time Domain) for a 
		Subject/Activity pair in the 3 axial
	* Class : <dbl>
	* Unit :  rad/seg
	* Value indicating missing data : NA

**[25] "tBodyGyroscope_StandardDeviation_X" **                  
**[26] "tBodyGyroscope_StandardDeviation_Y" **                  
**[27] "tBodyGyroscope_StandardDeviation_Z" **                  
	
	* Description : Average of the Body Gyroscope Standard Deviation (in Time Domain) for a 
		Subject/Activity pair in the 3 axial
	* Class : <dbl>
	* Unit :  rad/seg
	* Value indicating missing data : NA

**[28] "tBodyGyroscopeJerk_Mean_X" **                           
**[29] "tBodyGyroscopeJerk_Mean_Y" **                           
**[30] "tBodyGyroscopeJerk_Mean_Z" **                           
	
	* Description : Average of the Body Gyroscope Jerk Mean (in Time Domain) for a 
		Subject/Activity pair in the 3 axial
	* Class : <dbl>
	* Unit :  gravity per second (g/s)
	* Value indicating missing data : NA


**[31] "tBodyGyroscopeJerk_StandardDeviation_X" **              
**[32] "tBodyGyroscopeJerk_StandardDeviation_Y" **              
**[33] "tBodyGyroscopeJerk_StandardDeviation_Z" **              
	
	* Description : Average of the Body Gyroscope Jerk StandardDeviation (in Time Domain) for 
		a Subject/Activity pair in the 3 axial
	* Class : <dbl>
	* Unit :  gravity per second (g/s)
	* Value indicating missing data : NA

**[34] "tBodyAccelerationMag_Mean" **                           
**[35] "tBodyAccelerationMag_StandardDeviation" **              
	
	* Description : Average of the Body Accelertion Vector Magnitude (Mean and Standard 
		Deviation in Time Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[36] "tGravityAccelerationMag_Mean" **                        
**[37] "tGravityAccelerationMag_StandardDeviation" **           
	
	* Description : Average of the Gravity Accelertion Vector Magnitude (Mean and Standard 
		Deviation in Time Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[38] "tBodyAccelerationJerkMagnitude_Mean" **                 
**[39] "tBodyAccelerationJerkMagnitude_StandardDeviation" **    
	
	* Description : Average of the Body Accelertion Jerk Vector Magnitude (Mean and Standard 
		Deviation in Time Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[40] "tBodyGyroscopeMag_Mean" **                              
**[41] "tBodyGyroscopeMag_StandardDeviation" **                 
	
	* Description : Average of the Body Gyroscope Magnitude (Mean and Standard Deviation in 
		Time Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[42] "tBodyGyroscopeJerkMagnitude_Mean" **                    
**[43] "tBodyGyroscopeJerkMagnitude_StandardDeviation" **       
	
	* Description : Average of the Body Gyroscope Jerk Magnitude (Mean and Standard Deviation 
		in Time Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[44] "fBodyAcceleration_Mean_X" **                            
**[45] "fBodyAcceleration_Mean_Y" **                            
**[46] "fBodyAcceleration_Mean_Z" **        
	
	* Description : Average of the Body Acceleration Mean (in frequency Domain) for a 
		Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA
                    

**[47] "fBodyAcceleration_StandardDeviation_X" **               
**[48] "fBodyAcceleration_StandardDeviation_Y" **               
**[49] "fBodyAcceleration_StandardDeviation_Z" **               
	
	* Description : Average of the Body Acceleration Standard Deviation (in frequency Domain) 
		for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[50] "fBodyAcceleration_meanFreq_X" **                        
**[51] "fBodyAcceleration_meanFreq_Y" **                        
**[52] "fBodyAcceleration_meanFreq_Z" **                        
	
	* Description : Average of the Body Acceleration Mean Frequency (in frequency Domain) for 
		a Subject/Activity pair
	* Class : <dbl>
	* Unit :  

**[53] "fBodyAccelerationJerk_Mean_X" **                        
**[54] "fBodyAccelerationJerk_Mean_Y" **                        
**[55] "fBodyAccelerationJerk_Mean_Z" **                        
	
	* Description : Average of the Body Acceleration Jerk Mean (in frequency Domain) for a 
		Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[56] "fBodyAccelerationJerk_StandardDeviation_X" **           
**[57] "fBodyAccelerationJerk_StandardDeviation_Y" **           
**[58] "fBodyAccelerationJerk_StandardDeviation_Z" **           
	
	* Description : Average of the Body Acceleration Jerk Standard Deviation (in frequency 
		Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA
	
	
**[59] "fBodyAccelerationJerk_meanFreq_X" **                    
**[60] "fBodyAccelerationJerk_meanFreq_Y" **                    
**[61] "fBodyAccelerationJerk_meanFreq_Z" **                    
	
	* Description : Average of the Body Acceleration Jerk Mean Frequency (in frequency 
		Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA
	
**[62] "fBodyGyroscope_Mean_X" **                               
**[63] "fBodyGyroscope_Mean_Y" **                               
**[64] "fBodyGyroscope_Mean_Z" **                               
	
	* Description : Average of the Body Gyroscope Mean (in frequency Domain) for a 
		Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[65] "fBodyGyroscope_StandardDeviation_X" **                  
**[66] "fBodyGyroscope_StandardDeviation_Y" **                  
**[67] "fBodyGyroscope_StandardDeviation_Z" **                  
	
	* Description : Average of the Body Gyroscope Standard Deviation (in frequency Domain) 
		for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[68] "fBodyGyroscope_meanFreq_X" **                           
**[69] "fBodyGyroscope_meanFreq_Y" **                           
**[70] "fBodyGyroscope_meanFreq_Z" **                           
	
	* Description : Average of the Body Gyroscope Mean Frequency (in frequency Domain) for a 
		Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[71] "fBodyAccelerationMag_Mean" **                           
**[72] "fBodyAccelerationMag_StandardDeviation" **              
**[73] "fBodyAccelerationMag_meanFreq" **                       
	
	* Description : Average of the Body Acceleration Mean, Standard Deviation and Mean 	
		Frequency (in frequency Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[74] "fBodyAccelerationJerkMagnitude_Mean" **             
**[75] "fBodyAccelerationJerkMagnitude_StandardDeviation" **
**[76] "fBodyAccelerationJerkMagnitude_meanFreq" **         
	
	* Description : Average of the Body Acceleration Jerk Magnitude, Standard Deviation and 
		Mean Frequency (in frequency Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[77] "fBodyGyroscopeMag_Mean" **                          
**[78] "fBodyGyroscopeMag_StandardDeviation" **             
**[79] "fBodyGyroscopeMag_meanFreq" **                      
	
	* Description : Average of the Body Gyroscope Magnitude Mean, Standard Deviation 
		and Mean Frequency (in frequency Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA

**[80] "fBodyGyroscopeJerkMagnitude_Mean" **                
**[81] "fBodyGyroscopeJerkMagnitude_StandardDeviation" **   
**[82] "fBodyGyroscopeJerkMagnitude_meanFreq" **    
	
	* Description : Average of the Body Gyroscope Jerk Magnitude Mean, Standard Deviation 
		and Mean Frequency (in frequency Domain) for a Subject/Activity pair
	* Class : <dbl>
	* Value indicating missing data : NA
