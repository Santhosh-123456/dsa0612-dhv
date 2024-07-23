# Load necessary libraries
library(ggplot2)
library(tidyr)

# Dataset
data <- data.frame(
  Category = c('Product Quality', 'Customer Service', 'Value for Money'),
  Very_Dissatisfied = c(5, 10, 8),
  Dissatisfied = c(15, 20, 12),
  Neutral = c(25, 30, 28),
  Satisfied = c(35, 25, 32),
  Very_Satisfied = c(20, 15, 20)
)

# Reshape the data to long format
data_long <- gather(data, key = "Rating", value = "Count", -Category)

# Create the stacked bar plot
ggplot(data_long, aes(x = Category, y = Count, fill = Rating)) +
  geom_bar(stat = "identity") +
  labs(title = 'Satisfaction Ratings',
       x = 'Category',
       y = 'Count') +
  scale_fill_brewer(palette = "Set3") +
  theme_minimal()
