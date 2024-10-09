#Store the mtcars data set in a variable, say cars.
cars <- mtcars

model_c <- lm(mpg~., data = cars)

summary(model_c)

#add a totally randomly generated variable to the data set

set.seed(1:100)
rand <- sample(1:100, nrow(cars))

cars$rv <- rand

#Build another model to model mpg with all other variables including the randomly 
model_r <- lm(mpg~., data = cars)
summary(model_r)
