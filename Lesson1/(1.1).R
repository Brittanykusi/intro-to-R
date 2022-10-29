# Intro to R Lesson
# October 27th, 2022

# Interacting with R
#1.1

## I am adding 3 and 5 because I was told to do so.
3+5

# what happens if you rerun the code without the "#"?
# the code ris an error (Error: unexpected symbol in "I am") which means that   the R interpreter did not know what to do with that command.”
I am adding 3 and 5. R is fun!
  3+5

# R syntax
# Assignment operator
#In RStudio, typing Alt + - (push Alt at the same time as the - key, on Mac     type option + -) will write ` <- ` in a single keystroke.
x <- 3
y <- 5
# to display variable value in console
y
x
# you can now add the variable
x+y
# assign a new variable
number <- x+y
# Try changing the value of the variable x to 5. What happens to number? 
# it changes
x <- 5
# Now try changing the value of variable y to contain the value 10. What do you need to do, to update the variable number?
# rerun the variable assignment code ```number <- x+y```
y <- 10
number <- x+y

