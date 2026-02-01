students <- read.csv(
  "students.csv",
  sep = "",
  stringsAsFactors = FALSE
)
colnames(students)

#Reading CSV
students <- read.csv("students.csv")
str(students)
head(students)

#Data Cleaning
# Check missing values
colSums(is.na(students))

students <- data.frame(
  Name = c("A", "B", "C", "D", "E"),
  Marks = c(45, 32, 60, 38, 50),
  Gender = c("F", "M", "F", "M", "F")
)

# Replace missing Marks
students$Marks[is.na(students$Marks)] <- mean(students$Marks, na.rm = TRUE)


# Convert Gender to factor
students$Gender <- factor(students$Gender)
str(students)

#Aggregation
# Average marks by Gender
aggregate(Marks ~ Gender, data=students, FUN=mean)

# Count of students per Grade
table(students$Grade)

#Simple Analysis
# Highest and lowest marks
max(students$Marks)
min(students$Marks)

# Students who passed
passed <- subset(students, Marks >= 40)
passed

#Plots
# Histogram
hist(students$Marks, main="Marks Histogram", xlab="Marks", col="skyblue", breaks=5)

# Boxplot
boxplot(Marks ~ Gender, data=students, main="Marks by Gender", col=c("pink","lightblue"))
