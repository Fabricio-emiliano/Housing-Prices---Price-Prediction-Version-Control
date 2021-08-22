#Loading Packages
library(tidyverse)
#Loading Data

train_data <- read.csv("train.csv")

# Aim

# The objective of this project is to predict the Sales Price of houses from Iowa Ames. For this purpose, we have a train data set containing 1460 rows and 81 variables.
#Our response variable is Sales Price:

# Clearly this variable have a right heavy tail 
summary(train_data$SalePrice)

hist(train_data$SalePrice)

# The Shapiro's normality test show strong evidence that the response variable could be fitted by a normal distribution. So we can use the Linear Regression to predict the value of SalePrice.
shapiro.test(train_data$SalePrice)


#Descriptive Analysis

# Spliting the data into character and integer:
str(train_data)

int=NULL
char=NULL
for(i in 1:81){
  if(class(train_data[,i])=="integer"){
    int <- c(int,names(train_data)[i])
  } else{
    char <- c(char,names(train_data)[i])
  }
}

train_integer <- train_data[,int]
train_char <- train_data[,char]

# Vou seguir pelo método da regressão linear e também pela random forest.
# correlations



#Model Building
#What do we need now? We need to see what variables bring to the model. A good way to do it is with a factorial analysis.


#Predictions

#Results