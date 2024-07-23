# Load necessary library
library(ggplot2)

# Create the dataset
data <- data.frame(
  Month = rep(c("Jan", "Feb", "Mar"), each = 3),
  Employee = rep(c("A", "B", "C"), 3),
  Score = c(85, 90, 78, 88, 92, 80, 90, 94, 82)
)

# Plot the histogram
ggplot(data, aes(x = Score)) +
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Monthly Performance Scores",
       x = "Score",
       y = "Frequency") +
  theme_minimal()
