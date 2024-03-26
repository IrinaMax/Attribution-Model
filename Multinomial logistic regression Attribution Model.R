> # This code is  toy Attribution model for my article. R code example with evaluation and predictions.
> # Visualizations 

> # Load necessary libraries
> library(nnet) # for multinom function
> library(pROC) # for ROC curve plotting
> 
> # Generate example data with seven variables
> set.seed(123)
> n <- 1000  # Number of samples
> 
> # Independent variables
> touchpoints <- sample(c("Social Media", "Email", "Search", "Referral", "Direct"), n, replace = TRUE)
> time_of_interaction <- sample(1:24, n, replace = TRUE)  # Hour of the day
> age <- sample(18:65, n, replace = TRUE)
> gender <- sample(c("Male", "Female"), n, replace = TRUE)
> marketing_channel <- sample(c("Online", "Offline"), n, replace = TRUE)
> website_visits <- rpois(n, lambda = 10)
> purchase_intent <- runif(n, min = 0, max = 1)
> 
> # Dependent variable (conversion)
> # Let's assume conversion is binary (0: No conversion, 1: Conversion)
> conversion <- ifelse(purchase_intent > 0.5, 1, 0)
> 
> # Create a dataframe
> data <- data.frame(
+   touchpoint = touchpoints,
+   time_of_interaction = time_of_interaction,
+   age = age,
+   gender = gender,
+   marketing_channel = marketing_channel,
+   website_visits = website_visits,
+   purchase_intent = purchase_intent,
+   conversion = conversion
+ )
> 
> # Convert categorical variables to factors
> data$touchpoint <- as.factor(data$touchpoint)
> data$gender <- as.factor(data$gender)
> data$marketing_channel <- as.factor(data$marketing_channel)
> 
> # Split data into training and testing sets
> set.seed(456)  # For reproducibility
> train_index <- sample(nrow(data), 0.7 * nrow(data))  # 90% for training
> train_data <- data[train_index, ]
> test_data <- data[-train_index, ]
> conv_test <-  test_data$conversion
> test_data <- test_data[,-8]
> 
> # Fit multinomial logistic regression model on the training data
> multi_logit_model <- multinom(conversion ~ ., data = train_data)
# weights:  12 (11 variable)
initial  value 485.203026 
iter  10 value 84.641947
iter  20 value 15.714469
iter  30 value 1.828916
iter  40 value 1.633497
iter  50 value 1.611369
iter  60 value 1.582540
iter  70 value 1.417401
iter  80 value 1.269105
iter  90 value 1.245420
iter 100 value 1.231894
final  value 1.231894 
stopped after 100 iterations
> 
> # Predict probabilities of conversion on the testing data
> predicted_probabilities <- predict(multi_logit_model, newdata = test_data, type = "probs")
> 
> # Convert predicted probabilities to binary outcomes (0 or 1) using a threshold of 0.5
> predicted_conversion <- ifelse(predicted_probabilities >= 0.5, 1, 0)
> 
> # Evaluate model performance using confusion matrix
> confusion_matrix <- table(conv_test, predicted_conversion)
> 
> # Calculate accuracy
> accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
> accuracy
[1] 0.9966667
> # Print confusion matrix and accuracy
> print("Confusion Matrix:")
[1] "Confusion Matrix:"
> print(confusion_matrix)
         predicted_conversion
conv_test   0   1
        0 142   0
        1   1 157
> print(paste("Accuracy:", accuracy))
[1] "Accuracy: 0.996666666666667"
> 
> 
> # Evaluate model performance using ROC curve
> roc_curve <- roc(conv_test, predicted_probabilities)  # Using the probability of conversion (1) as the predictor
Setting levels: control = 0, case = 1
Setting direction: controls < cases
> auc <- auc(roc_curve)
> 
> # Plot ROC curve
> plot(roc_curve, main = "ROC Curve for Multinomial Logistic Regression", col = "blue")
> legend("bottomright", legend = paste("AUC =", round(auc, 2)), col = "blue", lty = 1, cex = 0.8)
