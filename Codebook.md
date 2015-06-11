
##  Human Activity Recognition Using Smartphones Data Set 
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

## Data Source
* Original data set: []:https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Data Set Description: []:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
## Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
 
##Cleaning of the data
###The steps involved are-
1. Merge the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
### How `run_analysis.R` implements the above steps:
* Load both test and train data
* Load the features and activity labels.
* Extract the mean and standard deviation column names and data.
* Process the data. There are two parts processing test and train data respectively.
* Merge data set.
* Label data set with descriptive variable names
* Create another data set with average of each variable for each activity and each subject and save it as text file
 
##Description of the file `tiny_data.txt` file

###Dimensions:
* Rows: 40
* Columns: 81

### Variables
* Activity                                          
* Subject                                           
* timeBodyAccelerometer-mean()-X                    
* timeBodyAccelerometer-mean()-Y                    
* timeBodyAccelerometer-mean()-Z                    
* timeBodyAccelerometer-std()-X                     
* timeBodyAccelerometer-std()-Y                     
* timeBodyAccelerometer-std()-Z                     
* timeGravityAccelerometer-mean()-X                 
* timeGravityAccelerometer-mean()-Y                 
* timeGravityAccelerometer-mean()-Z                 
* timeGravityAccelerometer-std()-X                  
* timeGravityAccelerometer-std()-Y                  
* timeGravityAccelerometer-std()-Z                  
* timeBodyAccelerometerJerk-mean()-X                
* timeBodyAccelerometerJerk-mean()-Y                
* timeBodyAccelerometerJerk-mean()-Z                
* timeBodyAccelerometerJerk-std()-X                 
* timeBodyAccelerometerJerk-std()-Y                 
* timeBodyAccelerometerJerk-std()-Z                 
* timeBodyGyroscope-mean()-X                        
* timeBodyGyroscope-mean()-Y                        
* timeBodyGyroscope-mean()-Z                        
* timeBodyGyroscope-std()-X                         
* timeBodyGyroscope-std()-Y                         
* timeBodyGyroscope-std()-Z                         
* timeBodyGyroscopeJerk-mean()-X                    
* timeBodyGyroscopeJerk-mean()-Y                    
* timeBodyGyroscopeJerk-mean()-Z                    
* timeBodyGyroscopeJerk-std()-X                     
* timeBodyGyroscopeJerk-std()-Y                     
* timeBodyGyroscopeJerk-std()-Z                     
* timeBodyAccelerometerMagnitude-mean()             
* timeBodyAccelerometerMagnitude-std()              
* timeGravityAccelerometerMagnitude-mean()          
* timeGravityAccelerometerMagnitude-std()           
* timeBodyAccelerometerJerkMagnitude-mean()         
* timeBodyAccelerometerJerkMagnitude-std()          
* timeBodyGyroscopeMagnitude-mean()                 
* timeBodyGyroscopeMagnitude-std()                  
* timeBodyGyroscopeJerkMagnitude-mean()             
* timeBodyGyroscopeJerkMagnitude-std()              
* frequencyBodyAccelerometer-mean()-X               
* frequencyBodyAccelerometer-mean()-Y               
* frequencyBodyAccelerometer-mean()-Z               
* frequencyBodyAccelerometer-std()-X                
* frequencyBodyAccelerometer-std()-Y                
* frequencyBodyAccelerometer-std()-Z                
* frequencyBodyAccelerometer-meanFreq()-X           
* frequencyBodyAccelerometer-meanFreq()-Y           
* frequencyBodyAccelerometer-meanFreq()-Z           
* frequencyBodyAccelerometerJerk-mean()-X           
* frequencyBodyAccelerometerJerk-mean()-Y           
* frequencyBodyAccelerometerJerk-mean()-Z           
* frequencyBodyAccelerometerJerk-std()-X            
* frequencyBodyAccelerometerJerk-std()-Y            
* frequencyBodyAccelerometerJerk-std()-Z            
* frequencyBodyAccelerometerJerk-meanFreq()-X       
* frequencyBodyAccelerometerJerk-meanFreq()-Y       
* frequencyBodyAccelerometerJerk-meanFreq()-Z       
* frequencyBodyGyroscope-mean()-X                   
* frequencyBodyGyroscope-mean()-Y                   
* frequencyBodyGyroscope-mean()-Z                   
* frequencyBodyGyroscope-std()-X                    
* frequencyBodyGyroscope-std()-Y                    
* frequencyBodyGyroscope-std()-Z                    
* frequencyBodyGyroscope-meanFreq()-X               
* frequencyBodyGyroscope-meanFreq()-Y               
* frequencyBodyGyroscope-meanFreq()-Z               
* frequencyBodyAccelerometerMagnitude-mean()        
* frequencyBodyAccelerometerMagnitude-std()         
* frequencyBodyAccelerometerMagnitude-meanFreq()    
* frequencyBodyAccelerometerJerkMagnitude-mean()    
* frequencyBodyAccelerometerJerkMagnitude-std()     
* frequencyBodyAccelerometerJerkMagnitude-meanFreq()
* frequencyBodyGyroscopeMagnitude-mean()            
* frequencyBodyGyroscopeMagnitude-std()             
* frequencyBodyGyroscopeMagnitude-meanFreq()        
* frequencyBodyGyroscopeJerkMagnitude-mean()        
* frequencyBodyGyroscopeJerkMagnitude-std()         
* frequencyBodyGyroscopeJerkMagnitude-meanFreq()    