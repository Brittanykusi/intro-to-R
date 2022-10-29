# Data subsetting with base R: vectors and factors

age <- c(15, 22, 45, 52, 73, 81)
# Suppose we only wanted the fifth value of this vector, we would use the following syntax:
age[5]
#If we wanted all values except the fifth value of this vector, we would use the following:
age[-5]
#If we wanted to select more than one element we would still use the square bracket syntax, but rather than using a single value we would pass in a vector of several index values:
age[c(3,5,6)]   ## nested

# OR

## create a vector first then select
idx <- c(3,5,6) # create vector of the elements of interest
age[idx]
#To select a sequence of continuous values from a vector, we would use : which is a special function that creates numeric vectors of integer in increasing or decreasing order. Let’s select the first four values from age:
age[1:4]
age[4:1]

# Exercise:
# Create a vector called alphabets with the following letters, C, D, X, L, F.
alphabets <- c("C", "D", "X", "L", "F")
# Use the associated indices along with [ ] to do the following:
# only display C, D and F
alphabets[c(1, 2, 5)]
# display all except X
alphabets[-3]
# display the letters in the opposite order (F, L, X, D, C)
alphabets[5:1]

#We can use logical expressions to determine whether a particular condition is true or false. For example, let’s use our age vector:
age
#If we wanted to know if each element in our age vector is greater than 50, we could write the following expression:
age > 50
#Select all values in the age vector over 50 or age less than 18:
age > 50 | age < 18

age[age > 50 | age < 18]  ## nested

# OR

## create a vector first then select
idx <- age > 50 | age < 18
age[idx]

#While logical expressions will return a vector of TRUE and FALSE values of the same length, we could use the which() function to output the indices where the values are TRUE.
which(age > 50 | age < 18)
age[which(age > 50 | age < 18)]  ## nested
## create a vector first then select
idx_num <- which(age > 50 | age < 18)
age[idx_num]

# Let’s extract the values of the factor with high expression, and let’s using nesting here:
expression[expression == "high"]    ## This will only return those elements in the factor equal to "high"

# Exercise:
# Extract only those elements in samplegroup that are not KO
samplegroup[samplegroup!= "KO"]

#releveling
#To view the integer assignments under the hood you can use str():
expression

str(expression)
# To relevel the categories, you can add the levels argument to the factor() function, and give it a vector with the categories listed in the required order:
expression <- factor(expression, levels=c("low", "medium", "high"))     
# you can re-factor a factor 

str(expression)
#Exercise
#Use the samplegroup factor we created in a previous lesson, and relevel it such that KO is the first level followed by CTL and OE.  
samplegroup <- factor(samplegroup, levels=c("KO", "CTL", "OE")) 
str(samplegroup)