# Functions in R

# The general usage for a function is the name of the function followed by parentheses:
function_name(input)
#The input(s) are called arguments, which can include:
#the physical object (any data structure) on which the function carries out a task
#specifications that alter the way the function operates (e.g. options)
# Not all functions take arguments, for example:
getwd()




glengths <- c(glengths, 90) # adding at the end	
glengths <- c(30, glengths) # adding at the beginning
sqrt(81)
sqrt(glengths) # give you the sqrt of every value in glengths
round(3.14159) #We can see that we get 3. That’s because the default is to round to the nearest whole number.
#seeking help with arguments
?round
#Alternatively, if you are familiar with the function but just need to remind yourself of the names of the arguments, you can use:
args(round)
#Even more useful is the example() function. This will allow you to run the examples section from the Online Help to see exactly how it works when executing the commands. Let’s try that for round():
example("round")
#In our example, we can change the number of digits returned by adding an argument. We can type digits=2 or however many we may want:
round(3.14159, digits=2) # you dont actually need to name the arguments

#Exercise:
# Let’s use base R function to calculate mean value of the glengths vector. You might need to search online to find what function can perform this task.
mean(glengths)
#Create a new vector test <- c(1, NA, 2, 3, NA, 4). Use the same base R function from exercise 1 (with addition of proper argument), and calculate mean value of the test vector. The output should be 2.5.
test <- c(1, NA, 2, 3, NA, 4)
mean(na.omit(test))
#Another commonly used base function is sort(). Use this function to sort the glengths vector in descending order.
sort(test)
# Sometimes there is a small task (or series of tasks) you need done and you find yourself having to repeat it multiple times. In these types of situations, it can be helpful to create your own custom function. The structure of a function is given below:
name_of_function <- function(argument1, argument2) {
  statements or code that does something
  return(something)
}
#This function will take in a numeric value as input, and return the squared value.
square_it <- function(x) {
  square <- x * x
  return(square)
}
square_it(5)

# Exercise
#Write a function called multiply_it, which takes two inputs: a numeric value x, and a numeric value y. The function will return the product of these two numeric values, which is x * y. For example, multiply_it(x=4, y=6) will return output 24.
multiply_it = function(x,y){
  multiply <- x * y
  return(multiply)
}
multiply_it(4,6)
