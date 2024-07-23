# Load necessary libraries
library(ggplot2)
library(tidyr)

# Dataset
data <- data.frame(
  Month = c('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov'),
  Product_A_Sales = c(500, 600, 700, 800, 750, 850, 900, 950, 1000, 1050, 1100),
  Product_B_Sales = c(300, 320, 350, 400, 420, 450, 480, 500, 550, 580, 600),
  Product_C_Sales = c(200, 250, 300, 350, 400, 420, 450, 470, 500, 530, 550)
)

# Reshape the data to long format
data_long <- gather(data, key = "Product", value = "Sales", -Month)

# Create the violin plot
ggplot(data_long, aes(x = Product, y = Sales)) +
  geom_violin(trim = FALSE) +
  geom_jitter(width = 0.2) +
  labs(title = 'Violin Plot of Monthly Sales Data',
       x = 'Product',
       y = 'Sales') +
  theme_minimal()
