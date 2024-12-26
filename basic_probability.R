# Problem: Calculate the probability of an event.
# Example: Out of 100 customers, 60 bought a product. Calculate P(Buy).

# Generate random data for 100 customers
set.seed(42)
customers <- sample(c("Buy", "NoBuy"), 100, replace = TRUE, prob = c(0.6, 0.4))

# Calculate probabilities
prob_buy <- sum(customers == "Buy") / length(customers)
prob_no_buy <- sum(customers == "NoBuy") / length(customers)

# Print probabilities
print(paste("P(Buy):", prob_buy))
print(paste("P(NoBuy):", prob_no_buy))

# Visualize the data
barplot(table(customers), col = c("green", "red"),
        main = "Customer Purchase Probability",
        xlab = "Purchase Status", ylab = "Frequency")
