xtrain0 <- read.table("dataset/train/X_train.txt",header=FALSE)
xtest0 <- read.table("dataset/test/X_test.txt",header=FALSE)
feature <- read.table("dataset/features.txt",header=FALSE)
X <- rbind(x_train=xtrain0,x_test=xtest0)
namesCol <- make.names(feature$V2)
colnames(X) <- namesCol
X2 <- X[,grep(".mean..|.std..",namesCol)]
ytest <- read.table("dataset/test/y_test.txt",header=FALSE)
ytrain <- read.table("dataset/train/y_train.txt",header=FALSE)
Y <- rbind(y_train=ytrain,y_test=ytest)
strain <- read.table("dataset/train/subject_train.txt",header=FALSE)
stest <- read.table("dataset/test/subject_test.txt",header=FALSE)
S <- rbind(strain,stest)

library(dplyr)
X3 <- mutate(X2,subject=S[1:10299,1],activity=Y[1:10299,1])
v <- c("WALKING","WALKING UPSTAIRS","WALKING DOWNSTAIRS","SITTING","STANDING","LAYING")
for(i in 1:6){
  X3$activity[X3$activity==i] <- v[i]
}
X4 <- aggregate(X3,by=list(X3$activity,X3$subject),FUN=mean)
X5 <- select(X4,-(subject:activity))
write.table(X5,file="DATASAMSUNG.txt",row.name=FALSE)
