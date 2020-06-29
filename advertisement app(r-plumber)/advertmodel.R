rm(list=ls(all=TRUE))


library(magrittr)
library(tidyverse)
library(caret)
library(rpart)
library(DMwR)
library(randomForest)


#path set#
setwd("C:/Users/User/Desktop/data science project/app/advertisement app(r)")

data<-read.csv(file="Advertising.csv")

dim(data)
str(data)
summary(data)

#preprocessing#
data$X=NULL

#EDA#

library(DataExplorer)
create_report(data)

#create model#
model=lm(sales~TV+radio+newspaper,data=data)

#save model#
saveRDS(model,"advert.rds")
