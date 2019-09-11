
# Import the dataset into R
# define the filename
filename <- "Cars1.csv"

# load the CSV file from the local directory
dataset <- read.csv(filename, header = TRUE)

# Print out descriptive statistics for a selection of quantitative and categorical variables.
summary(dataset, n=10)
dim(dataset)

#list type for each attribute
sapply(dataset, class)

# Transform at least one variable. It doesn't matter what the transformation is.
summary(dataset$EngineSize)
summary(log10(dataset$EngineSize + 1))
summary(sqrt(dataset$EngineSize))

# Plot at least one quantitative variable, and one scatterplot
# Histogram      
EngineSize <- dataset$EngineSize
hist(EngineSize)

#ScatterPlot
x <- dataset$EngineSize
y <- dataset$Price
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x, y, main = "Scatter Plot of Size Vs Price",
     xlab = "Engine_Size", ylab = "Price",
     pch = 19, frame = TRUE)







