# CodeBook
This file contains the description of the variables, the data, and transformations performed to clean up the data.
# Variables
* complete_data: data from the training and test sets joined together
* complete_labels: data from the training and test labels joined together
* complete_subjects: data from the training and test subjects joined together
* activity_labels: data that links the activity name with its code
* features: contains the features names (variables)
* col_names: names of the features containg mean and sd values
* col_nums: number of the column containig mean and sd values
* avg_data: contains the average of each variable for each activity and each subjec

# Transformations
1. Using the join() function, data are read from the respective files and storaged in the variables;
2. Select only the features names containg mean and sd values. The values are stored in the variables col_names and col_nums;
3. Filter the complete data set based in the previus select;
4. Transform the feature code into the respective code name;
5. Appends activity and subject names columns to the filtered complete_data;
6. Appropriately labels the data set with descriptive variable names (features);
7. Creates a tidy data set with the average of each variable for each activity and each subject, named avg_data.

# Function join(file1, file2)
This function reads and row bind the 2 files.
