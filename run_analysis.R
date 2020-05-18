library("tidyverse")

join <- function(file1, file2){
        data1 <- read.table(file1)
        data2 <- read.table(file2)
        rbind(data1, data2)
}

# Read and join the files

# train and test set
complete_data <- join("./UCI HAR Dataset/train/X_train.txt", "./UCI HAR Dataset/test/X_test.txt")

#labels
complete_labels <- join("./UCI HAR Dataset/train/y_train.txt", "./UCI HAR Dataset/test/y_test.txt")

#subjects
complete_subjects <- join("./UCI HAR Dataset/train/subject_train.txt", "./UCI HAR Dataset/test/subject_test.txt")

#activity_labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

#features
features <- read.table("./UCI HAR Dataset/features.txt")

#Extracts only the measurements on the mean and standard deviation for each measurement

col_nums <- grep("mean|std", features[,2])
col_names <- grep("mean|std", features[,2], value = TRUE)

# remove characters ( , ), -
col_names <- gsub("[()-]", "", col_names) 


#Selecting the mean and sd columns in the complete data set
complete_data <- complete_data[col_nums]

#Uses descriptive activity names to name the activities in the data set
complete_labels <- activity_labels[match(complete_labels[,1],activity_labels[,1]),2]
complete_data <- cbind(complete_data,complete_labels,complete_subjects)

#Appropriately labels the data set with descriptive variable names
names(complete_data) <- c(col_names,"activity","subject")

avg_data <- complete_data %>% 
        group_by(activity, subject) %>% 
        summarize_all(funs(mean))
                      