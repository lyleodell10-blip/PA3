# COP2073C Programming Assignment 3

# 1. Create the employee data frame.
employees <- data.frame(
  EmployeeID = c(1001, 1002, 1003, 1004, 1005),
  LastName = c("Smith", "Norris", "Johnson", "Hart", "Owens"),
  Salary = c(45000, 51000, 36000, 39000, 42000),
  stringsAsFactors = FALSE
)

# 2. Display a summary of the data frame.
summary(employees)

# 3. Add the Exempt column using cbind(), subsetting, and a logical condition.
exempt_values <- c("N", "Y")
Exempt <- exempt_values[(employees$Salary > 50000) + 1]
employees <- cbind(employees, Exempt)

# 4. Display the updated data frame.
employees

# 5. Extract and display the first two rows.
employees[1:2, ]

# 6. Display the structure of the data frame.
str(employees)

# 7. Add the additional employee using rbind().
new_employee <- data.frame(
  EmployeeID = 1006,
  LastName = "Rogers",
  Salary = 55000,
  Exempt = "Y",
  stringsAsFactors = FALSE
)

employees <- rbind(employees, new_employee)

# 8. Display the final version of the data frame.
employees
