Read the X_train.txt data into the variable xtrain0 (7352 x 561).
Read the X_test.txt data into the variable xtest0  (2947 x 561).
Read the features.txt data (which contains column names of X data) into the variable feature (561 x 2).
Rbinded the test and train data into single dataset X (10299 x 561).
make.names() : Makes syntactically valid names out of character vectors. Stored all the column names of X data into namescol.
assigned namescol as Colnames of data X.
X2 contains only those columns whose name contains "mean" or "std",also includes meanFreq.There are 79(33-mean + 33-std + 13-meanFreq) columns in X2 (10299 x 79).
Read the y_test.txt data into the variable ytest (2947 x 1).
Read the y_train.txt data into the variable ytrain (7352 x 1).
Rbinded the test and train data into single dataset Y (10299 x 1).
Read the subject_train.txt data into the variable strain (7352 x 1).
Read the subject_test.txt data into the variable stest (2947 x 1).
Rbinded the test and train data into single dataset S (10299 x 1).
Loading the dplyr function.
Added the subject and activity columns in the data X2 by using mutate and named as X3,having 81 columns (10299 x 81).
Loaded all the possible 6 activities into a character vector V.
Invoked for loop for i=1 to 6.
Changed the data in activity column of X3 from integers (1 to 6) to characters ("WALKING"...) .
Closed for loop.
Used aggregate() which grouped the data X3 by subject and activity columns and evaluated the mean of all other columns for each activity and subject and saved it in X4 (180 x 83).
Removed one extra subject and activity columns which came up in X4 using select() and saved it in X5 (180 x 81).
Wrote the data in X5 into a text file named DATASAMSUNG.txt without rownames.
