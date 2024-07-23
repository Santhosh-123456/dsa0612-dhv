# Load necessary libraries
library(ggplot2)

# Dataset
data <- data.frame(
  Week = as.Date(c('2023-01-01', '2023-01-01', '2023-01-01', 
                   '2023-01-08', '2023-01-08', '2023-01-08', 
                   '2023-01-15', '2023-01-15', '2023-01-15')),
  City = c('New York', 'Los Angeles', 'Chicago', 
           'New York', 'Los Angeles', 'Chicago', 
           'New York', 'Los Angeles', 'Chicago'),
  Average_Temperature = c(-2, 15, -5, 0, 17, -3, 2, 18, -2)
)

# Plotting
ggplot(data, aes(x = Week, y = Average_Temperature, color = City, group = City)) +
  geom_line() +
  geom_point() +
  labs(title = 'Weekly Average Temperature in Different Cities', 
       x = 'Week', 
       y = 'Average Temperature (°C)') +
  theme_minimal()
