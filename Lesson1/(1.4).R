# Data subsetting with base R: vectors and factors

# Let’s bring in the metadata file we downloaded earlier (mouse_exp_design.csv or mouse_exp_design.txt) using the read.csv function.
# check the arguments
?read.csv
# Let’s read in the mouse_exp_design file and create a new data frame called metadata.
metadata <- read.csv(file="data/metadata_file.csv")

# Exercise 1
#Download this tab-delimited .txt file and save it in your project’s data folder.
#Read it in to R using read.table() with the approriate arguments and store it as the variable proj_summary. To figure out the appropriate arguments to use with read.table(), keep the following in mind:
  #all the columns in the input text file have column name/headers
  #you want the first column of the text file to be used as row names (hint: look up the input for the row.names = argument in read.table())
proj_summary <- read.table("data/project-summary.txt", header = TRUE)
#Display the contents of proj_summary in your console
proj_summary

#Suppose we had a larger file, we might not want to display all the contents in the console. Instead we could check the top (the first 6 lines) of this data.frame using the function head():
head(metadata)

#Exercise 2
# Use the class() function on glengths and metadata, how does the output differ between the two?
class(glengths) # numeric
class(metadata) #data.frame
# Use the summary() function on the proj_summary dataframe, what is the median “rRNA_rate”?
summary(proj_summary) # the median is 0.005072
# How long is the samplegroup factor?
length(samplegroup) # 3
# What are the dimensions of the proj_summary dataframe?
dim(proj_summary) # rows = 9, columns = 9
# When you use the rownames() function on metadata, what is the data structure of the output?
rownames(metadata) # sample 1-12
# [Optional] How many elements in (how long is) the output of colnames(proj_summary)? Don’t count, but use another function to determine this.
ncol(proj_summary) # 9
