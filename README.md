README for 'run_analysis.R'
============
To utilize this script, follow these steps:

1. Set the working directory for R
2. Save run_analysis.R to that directory
3. Download a .zip file of the Samsung data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
4. Extract and save all Samsung data .txt files to a folder called "data" within the working directory
5. Ensure that you have the following packages installed in R: plyr, reshape2
6. Enter source("run_analysis.R") in the command line of R to run the script
7. Expect a file called "final_data.txt" in your working directory

The data in this file will be the end result of combining the Samsung test and training data, cleaning the variables, and subsetting the data to just those variables referring to a mean or standard deviation.