## Read test Data
inputPath<-file.path(getwd(), "UCI HAR Dataset")
testDt<-read.table(file.path(inputPath, "test", "X_test.txt"))
testSubject<- read.table(file.path(inputPath, "test", "subject_test.txt"))
testActivity<-read.table(file.path(inputPath, "test", "y_test.txt"))

## Read train data
trainDt<-read.table(file.path(inputPath, "train", "X_train.txt"))
trainSubject<-read.table(file.path(inputPath, "train", "subject_train.txt"))
trainActivity<-read.table(file.path(inputPath, "train", "y_train.txt"))

## Read features data
features<-read.table(file.path(inputPath, "", "features.txt"))

## Read activity labels data
activityLbls<-read.table(file.path(inputPath, "", "activity_labels.txt"))



## Combine test and train Data and name the columns
mergeSubject<-rbind(testSubject, trainSubject)
mergeActivity<-rbind(testActivity, trainActivity)
mergeData<-rbind(testDt, trainDt)

## Set col names for features, subject, activity data
colnames(features)<-c("featureId", "featureName")
colnames(activityLbls)<-c("ActivityId", "ActivityName")
colnames(mergeSubject)<-c("Subject")
colnames(mergeActivity)<-c("ActivityId")
## Set col names of merged data with feature names
colnames(mergeData)<-features[,2]

## merge columns subject and activity into mergesubject
mergeSubject<-cbind(mergeSubject, mergeActivity)

## merge columns from previous steps to data
mergeData<-cbind(mergeSubject, mergeData)

## extract only mean and std dev columns
allCols<-colnames(mergeData)
finalDt<- mergeData[, grepl("mean\\(\\)|std\\(\\)|Subject|ActivityId", allCols)]

## Use activity label for code
finalDt<-merge(finalDt, activityLbls, by="ActivityId", all.x=TRUE)

#aggregate data for each subject and activity
aggDt<- aggregate(. ~Subject + ActivityId+ActivityName, finalDt, mean)

# write to file
write.table(aggDt, "tidyData.txt", row.name = FALSE)

#make codebook
knit("codebook.Rmd", output="codebook.md")










