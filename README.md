# Coursera Getting and Cleaning Data Course Project by Kaung Myat Khant
## Content of the repository
Here you will see the two main directories called **data** and **code**.
In the **code** directory contain the script, *run_analysis.R* to tidy up the **data** directory
Here, I **do not upload** the data files because of the limitation in internet connetion and large file size.
## How the script works
I have explained in the script about how the codes in the script worked.
- the first section of the script will download the zip file and unzip the data files into the **data** directory.
- the second section will read the data into the global environment of R
- the third section is merging the testing and training data
- the fourth section is extracting the mean and standard deviation columns
- the fifth section gives descriptive names to the activities
- the sixth section combined all the data and give descriptive names to columns
- the seventh section calculate the average of all the accelerometer and gyrometer measurements for each subject and each activity
- the eighth section write the data table in txt format in the extracted folder
## How to use the script
1. Just set the **working directory of R** in a directory you like
2. Next create the **data** as a sub-folder in it
3. Then just run the **script** step by step
4. You will finally get the **tidy dataset** in the end
