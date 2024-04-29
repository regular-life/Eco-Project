data <- read.csv("filtered/gwq_sdp_gini.csv")

# Run regression
model <- lm(chloride ~ sdp + I(sdp^2) + I(sdp^3) + gini, data = data)

# Summary of the regression results
summary(model)
# Extract residuals from the model object
residuals <- residuals(model)

# Calculate sum of residuals
sum_of_residuals <- sum(residuals)

# View sum of residuals
print(sum_of_residuals)