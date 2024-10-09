getwd()

#1Load data set
radioAds <- read.csv("radiomarketing.csv", header = TRUE, stringsAsFactors = FALSE)

#2 inspect structure of data set plot to see relationship
str(radioAds)
plot(radioAds$Radio, radioAds$Sales)
#3 set seed
set.seed(100)
?sample
#4 create training set
trainsample <- sample(1:nrow(radioAds), 0.7 * nrow(radioAds))
trainingSet <- radioAds[trainsample,]
# Create testing set
testSet <- radioAds[-trainsample,]

# Create model
radioModel <- lm(Radio~Sales, data = trainingSet)
summary(radioModel)

# predit variables

predicted_radio <- predict(radioModel, testSet[-2])

# attached predicted variables to the test set
testSet$Pred <- predicted_radio
