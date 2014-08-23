##READ IN TRAINING DATA
idTrain<-read.table("UCI HAR Dataset/train/subject_train.txt")
dataTrain<-read.table("UCI HAR Dataset/train/X_train.txt")
labelTrain<-read.table("UCI HAR Dataset/train/y_train.txt")

##READ IN TEST DATA
idTest<-read.table("UCI HAR Dataset/test/subject_test.txt")
dataTest<-read.table("UCI HAR Dataset/test/X_test.txt")
labelTest<-read.table("UCI HAR Dataset/test/y_test.txt")

##COMBINE TEST DATA, COMBINE TRAINING DATA, COMBINE TEST AND TRAINING DATA
trainData<-cbind(Subject=idTrain,Activity=labelTrain,dataTrain)
testData<-cbind('Subject'=idTest,'Activity'=labelTest,dataTest)
completeData<-rbind(trainData,testData)

##RENAME SUBJECT AND ACTIVITY COLUMNS
names(completeData)[1] <- "Subject"
names(completeData)[2] <- "Act"

##READ IN FEATURES WITH COLUMN NUMBERS
features<-read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

##EXTRACTS VARIABLES WITH mean(), std(), or meanFreq() FROM FEATURES TABLE
msfeatures<-features[grep("mean|std",features$V2),]

##EXTRACTS DATA WITH COLUMNS CONTAINING MEAN OR STANDARD DEVIATION FROM DATA TABLE
completeData2<-completeData[,colnames(completeData)=="Subject"|
   colnames(completeData)=="Act"|colnames(completeData) %in% paste("V",msfeatures$V1,sep="")]

##READS IN FILE WITH ACTIVITY NAMES
actLabels<-read.table("UCI HAR Dataset/activity_labels.txt")
names(actLabels) <- c("Act","Activity")

##CHANGES ACTIVITY NUMBER TO THE ACTIVITY NAME
completeData2<-merge(completeData2,actLabels,by.x="Act",by.y="Act",
   sort=FALSE,stringsAsFactors=FALSE)
completeData2$Act<-NULL
completeData2 <- completeData2[,c(1,81,2:80)]

##RENAME AND REPLACE COLUMN NAMES 
msfeatures$V3<-gsub("[^a-zA-Z]","",msfeatures$V2)
colnames(completeData2)<-c("Subject","Activity",msfeatures$V3)

##Create a second, independent tidy data set with the average of each variable
##for each activity and each subject and write the results to a text file.
final<-aggregate(. ~ Activity + Subject, data = completeData2, mean)
write.table(final,file="finalData.txt",row.names=FALSE)
