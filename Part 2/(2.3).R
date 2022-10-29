# Data wrangling: dataframes, matrices, and lists

# Extract value 'Wt'
metadata[1, 1]
# Extract value '1'
metadata[1, 3] 
# Extract third row
metadata[3, ] 
# Extract third column as a data frame
metadata[ , 3, drop = FALSE] 
# Dataframe containing first two columns
metadata[ , 1:2] 
# Data frame containing first, third and sixth rows
metadata[c(1,3,6), ] 
# Extract the celltype column for the first three samples
metadata[c("sample1", "sample2", "sample3") , "celltype"] 
# Check column names of metadata data frame
colnames(metadata)
# Check row names of metadata data frame
rownames(metadata)
# Extract the genotype column
metadata$genotype 
# Extract the first five values/elements of the genotype column
metadata$genotype[1:5]

# Exercises
# Return a data frame with only the genotype and replicate column values for sample2 and sample8.
metadata[c("sample2", "sample8"), c("genotype", "replicate")]  
# Return the fourth and ninth values of the replicate column.
metadata$replicate[c(4,9)]
# Extract the replicate column as a data frame.
metadata[, "replicate", drop = FALSE]

#Here we are looking for values to be equal to typeA, so our logical expression would be:
metadata$celltype == "typeA"

logical_idx <- metadata$celltype == "typeA"

metadata[logical_idx, ]

which(metadata$celltype == "typeA")

idx <- which(metadata$celltype == "typeA")

metadata[idx, ]
which(metadata$replicate > 1)

idx <- which(metadata$replicate > 1)
metadata[idx, ]
#or
metadata[which(metadata$replicate > 1), ]

sub_meta <- metadata[which(metadata$replicate > 1), ]

#excercise
#Subset the metadata dataframe to return only the rows of data with a genotype of KO.
idx <- which(metadata$genotype=="KO")
metadata[idx, ]

# Lists
#Let’s use the list1 that we created previously, and index the second component:
list1[[2]]
#With the class function we can check if that is what we retrieve:
comp2 <- list1[[2]]
class(comp2)
#You can also reference what is inside the component by adding an additional bracket. For example, in the first component we have a vector stored.
list1[[1]]
#Now, if we wanted to reference the first element of that vector we would use:
list1[[1]][1]

#Exercises
#Create a list named random with the following components: metadata, age, list1, samplegroup, and number.
random <- list(metadata, age, list1, samplegroup, number)
#Extract the samplegroup component.
random[[4]]


#Assigning names to the components in a list can help identify what each list component contains, as well as, facilitating the extraction of values from list components.
names(list1) 
# Name components of the list
names(list1) <- c("species", "df", "number")
names(list1)
# Extract 'df' component
list1$df

#Exercise
#Let’s practice combining ways to extract data from the data structures we have covered so far:
#Set names for the random list you created in the last exercise.
names(random) <- c("metadata", "age", "list1", "samplegroup", "number")
#Extract the age component using the $ notation
random$number
