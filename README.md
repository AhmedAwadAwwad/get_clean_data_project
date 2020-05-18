# get_clean_data_project
Final Project of Coursera Getting and Cleaning Data Course

This project is based on the data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The dataset was downloaded and unzipped, creating the directory "/UCI HAR Dataset/".

# run_analysis.R
R script that performs the cleannig and tidying of the above referenced dataset.
The script does the following steps:

1. Merges the training and the test sets to create one data set;
2. Extracts only the measurements on the mean and standard deviation for each measurement;
3. Uses descriptive activity names to name the activities in the data set;
4. Appropriately labels the data set with descriptive variable names;
5. From the data set in step 4, creates a second, independent tidy data set, named "avg_dat", with the average of each variable for each activity and each subject.
