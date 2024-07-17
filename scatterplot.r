# Load necessary library
library(ggplot2)
# Create a data frame
weight_height_data <- data.frame(
  Weight = c(60, 65, 70, 72, 75),
  Height = c(170, 175, 168, 180, 178)
)
# Plot scatter plot
ggplot(weight_height_data, aes(x = Weight, y = Height)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Weight vs. Height",
       x = "Weight (kg)",
       y = "Height (cm)") +
  theme_minimal()
