setwd("~/Development/gettingdata/project")

library(plyr)
library(reshape2)



## STEP 0: DOWNLOAD THE CORRECT DATA SET AND UNPACK IT

  ## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 



## STEP 1: MERGE THE TRAINING AND TEST DATA SETS TO CREATE ONE LARGE DATA SET

  ## Read in the training data and labels
  train <- read.table("./train/X_train.txt",sep="",header=FALSE,colClasses="numeric",na.strings="NA")
    ## This table consists of 7352 observations of 561 variables, using dim()
  trainl <- read.table("./train/y_train.txt",sep="",header=FALSE,na.strings="NA")
    ## This table consists of 7352 observations of 1 variable  

  ## Read in the test data and labels
  test <- read.table("./test/X_test.txt",sep="",header=FALSE,colClasses="numeric",na.strings="NA")
    ## This table consists of 2947 observations of 561 variables
  testl <- read.table("./test/y_test.txt",sep="",header=FALSE,na.strings="NA")
    ## This table consists of 2947 observations of 1 variable

  ## Create a column label to preserve the training versus test data category
  traingroup <- rep("training",nrow(train))
  testgroup <- rep("test",nrow(test))

  ## Append the train/test category to column one and the activity label to column two
  traindata <- cbind(traingroup,trainl,train)
  testdata <- cbind(testgroup,testl,test)

  ## Rename the first two columns to avoid confusion in merging/appending
  colnames(traindata)[1] <- "Category"
  colnames(traindata)[2] <- "Activity"
  colnames(testdata)[1] <- "Category"
  colnames(testdata)[2] <- "Activity"

  ## Append the test data below the training data using rbind
  alldata <- rbind(traindata,testdata)
  ## nrow(alldata)
  ## The 7352 + 2947 data rows equal the 10299 instances referenced in the data set description file.



## STEP 2: EXTRACT ONLY THE MEAN AND STANDARD DEVIATION COLUMNS FOR EACH MEASUREMENT

  ## Add column names from the features.txt file
  headers <- read.table("./features.txt",sep="",colClasses="character",header=FALSE,na.strings="NA")
  colnames(alldata)[3:ncol(alldata)] <- headers[,2]
  ## We skip past the first two columns, which we labeled in Step 1 above
  ## colnames(alldata)

  ## Search out the columns that contain the mean or stddev values
  ## According to feature_info.txt, we only want the terms "mean()" and "std()"
  ## For example, meanFreq() is a different value and should be skipped
  ## We can use one grep statement with an OR operator to identify the correct columns
  grep("*mean[^?F]|*std()",names(alldata),value=TRUE)

  ## We can store the column indices in a separate vector variable
  indices <- grep("*mean[^?F]|*std()",names(alldata))
  ## This gives us 66 column indices of mean() and std() measurements

  ## Loop through the indices and append only the mean() and std() columns to a new data set
  data <- alldata[,1:2]
  ## This for loop appends the column data and column name simultaneously
  for (x in 1:length(indices)) {
    data <- cbind(data,alldata[,indices[x]])
    colnames(data)[x+2] <- headers[indices[x]-2,2]
  }
  ## Now our data set only contains 66 of the 561 original feature variables,
  ## plus two columns indicating the training/test category and the activity code



## STEP 3: USE DESCRIPTIVE ACTIVITY NAMES FOR EACH ACTIVITY IN THE DATA SET

  ## Substitue words for the activity codes given in the activity_labels.txt file
  for (x in 1:nrow(data)) {
    if (data$Activity[x] == 1) data$Activity[x] <- "walking"
    if (data$Activity[x] == 2) data$Activity[x] <- "walkup"
    if (data$Activity[x] == 3) data$Activity[x] <- "walkdown"
    if (data$Activity[x] == 4) data$Activity[x] <- "sitting"
    if (data$Activity[x] == 5) data$Activity[x] <- "standing"
    if (data$Activity[x] == 6) data$Activity[x] <- "laying"    
  }
  ## Labels were chosen to be all lowercase and without spaces or unusual characters
  ## according to the tidy naming recommendations



## STEP 4: APPROPRIATELY LABEL THE DATA SET WITH DESCRIPTIVE VARIABLE NAMES

  ## This step is already completed above by calling the colnames function twice
  ## However, gsub can help us create nicer names by removing unnecessary characters

  ## For example, remove the parentheses from column names
  names(data) <- gsub("()","",names(data),fixed=TRUE)

  ## Other examples
  ## We can also remove the dashes and change to uppercase or lowercase
  ## test <- sub("-m","M",names(data))
  ## test1 <- sub("-s","S",test)
  ## test2 <- sub("-","",test1)
  ## Then, tBodyAcc-mean-X becomes tBodyAccMeanX



## STEP 5: CREATE A 2ND INDEPENDENT TIDY DATA SET WITH THE AVERAGE OF EACH VARIABLE
##  FOR EACH ACTIVITY AND EACH SUBJECT.

  ## I make the assumption that "subject" means the training or test data, and thus
  ## my "Category" data field

  ## A nice way to visualize the number of records for each category and activity
  stats <- table(data$Category,data$Activity)

  ## We can make a long tall skinny table
  talltable <- melt(data,id=c("Category","Activity"),measure.vars=colnames(data)[3:ncol(data)])

  ## Then we can recast it to show a summary of Category versus Activity combos
  combos <- dcast(talltable,Category+Activity~.)

  ## Next we can display a table of the means for each variable vs each Category/Activity combo
  ## This call creates a data frame with 66 rows and 12 columns
  means <- dcast(talltable,variable~Category+Activity,mean)

  ## The alternative call below creates a data frame that is 12 rows by 66 columns 
  ## means <- dcast(talltable,Category+Activity~variable,mean)



## STEP 6: WRITE THE DATA TABLE TO A FILE

  write.table(means,file="meanstable.txt",quote=FALSE,sep=" ",row.names=FALSE) 
  ## This writes a text file with 67 rows (including one header row) and 12 columns
