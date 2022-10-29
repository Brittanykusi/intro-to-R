# R Syntax and Data Structures

#Let’s create a vector of genome lengths and assign it to a variable called glengths.
glengths <- c(4.6, 3000, 50000)
glengths
# Create a character vector and store the vector as a variable called 'species'
species <- c("ecoli", "human", "corn")
species
# What do you think would happen if we forgot to put quotations around one of the values? Let’s test it out with corn. --> an error will occur
species <- c("ecoli", "human", corn)
#Exercise: Try to create a vector of numeric and character values by combining the two vectors that we just created (glengths and species). Assign this combined vector to a new variable called combined. Hint: you will need to use the combine c() function to do this. Print the combined vector in the console, what looks different compared to the original vectors? --> all of the values have quotation marks around them
combined <- c(glengths,species)



# Create a character vector and store the vector as a variable called 'expression'
expression <- c("low", "high", "medium", "high", "low", "medium", "high")
# Turn 'expression' vector into a factor
expression <- factor(expression)
#The expression vector is categorical, in that all the values in the vector belong to a set of categories; in this case, the categories are low, medium, and high. By turning the expression vector into a factor, the categories are assigned integers alphabetically, with high=1, low=2, medium=3. This in effect assigns the different factor levels. You can view the newly created factor variable and the levels in the Environment window.
#Exercises: Let’s say that in our experimental analyses, we are working with three different sets of cells: normal, cells knocked out for geneA (a very exciting gene), and cells overexpressing geneA. We have three replicates for each celltype.
#Create a vector named samplegroup with nine elements: 3 control (“CTL”) values, 3 knock-out (“KO”) values, and 3 over-expressing (“OE”) values.
samplegroup <- c("CTL", "KO", "OE")
#Turn samplegroup into a factor data structure.
samplegroup <- factor(samplegroup)



# Create a data frame and store it as a variable called 'df'
df <- data.frame(species, glengths)
df
#Exercise: Create a data frame called favorite_books with the following vectors as columns
titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)
favorite_books <- data.frame(titles,pages)



list1 <- list(species, df, number)
# Exercise: Create a list called list2 containing species, glengths, and number.
list2 <- list(species, glengths, number)
