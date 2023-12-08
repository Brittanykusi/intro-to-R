# intro-to-R
## 1.1

#### what is R?
 - an environment for statistical computing and graphics, which brings together a number of features to provide powerfulfunctionality.       
#### Why use R?
- visualization
- Data Science
- Open Source
- Platform agnostic
- Computations statistics       
    - example
    “R package of data and code behind the stories and interactives at FiveThirtyEight.com, a data-driven journalism website founded by Nate Silver (initially began as a polling aggregation site, but now covers politics, sports, science and pop culture) and owned by ESPN…” - fivethirtyeight Package
#### What is RStudio?
RStudio is freely available open-source Integrated Development Environment (IDE). RStudio provides an environment with many features to make using R easier and is a great alternative to working on R in the terminal.
- has 4 main panels
    - Console: where you can type commands and see output. The console is all you would see if you ran R in the command line without RStudio.
    - Script editor: where you can type out commands and save to file. You can also submit the commands to run in the console.
    - Environment/History: environment shows all active objects and history keeps track of all commands run in console
    - Files/Plots/Packages/Help
- If you wanted to choose a different directory to be your working directory, you could navigate to a different folder in the Files tab, then, click on the More dropdown menu and select Set As Working Directory.
- If R is still waiting for you to enter more data because it isn’t complete yet, the console will show a ```+ ```prompt. It means that you haven’t finished entering a complete command. Often this can be due to you having not ‘closed’ a parenthesis or quotation.
- If you’re in Rstudio and you can’t figure out why your command isn’t running, you can click inside the console window and press esc to escape the command and bring back a new prompt >.
#### Creating a new project directory on RStudio
1. Open RStudio application
2. Click on ```file``` and select ``` New Project ```
3. In the ```New Project window```, choose New Directory. Then, choose ```New Project```. Name your new directory ```Intro-to-R``` and then “Create the project as subdirectory of:” the Desktop (or location of your choice).
4. Click on ```Create Project ```
5. After your project is completed, if the project does not automatically open in RStudio, then go to the ```File``` menu, select Open Project, and choose ```Intro-to-R.Rproj```.
6. When RStudio opens, you will see three panels in the window.
7. Go to the ```File``` menu and select ```New File```, and select ```R Script```. The RStudio interface should now look like the screenshot below.
#### R syntax
- the comments # and how they are used to document function and its content
- variables and functions
- the assignment operator <-
    - ex: x <-3
- the = for arguments in functions



## 1.2


#### Data Types
- Numeric:  for any numerical value, including whole numbers and decimals.
- character:  for text values, denoted by using quotes (“”) around value. - integer: for whole numbers (e.g., 2L, the L indicates to R that it’s an integer). It behaves similar to the numeric data type for most tasks or functions; however, it takes up less storage space than numeric data, so often tools will output integers if the data is known to be comprised of whole numbers.
- logical: for TRUE and FALSE (the Boolean data type).
- complex:  to represent complex numbers with real and imaginary parts (e.g., 1+4i) and that’s all we’re going to say about them
- raw: 
#### Data Structure
Variables can store more than just a single value, they can store a multitude of different data structures. These include, but are not limited to, vectors (c), factors (factor), matrices (matrix), data frames (data.frame) and lists (list).
- vectors:a collection of values, mainly either numbers, or characters, or logical values.
  - Note that all values in a vector must be of the same data type.
- factors:a special type of vector that is used to store categorical data.
- matrix: A matrix in R is a collection of vectors of same length and identical datatype. 
  - They are usually of numeric datatype and used in computational algorithms to serve as a checkpoint
- data frame: A data.frame is similar to a matrix in that it’s a collection of vectors of the same length and each vector represents a column. 
  - in a dataframe each vector can be of a different data type (e.g., characters, integers, factors). 
- lists:a data structure that can hold any number of any types of other data structures.
  - Now that we know what lists are, why would we ever want to use them? When getting started with R, you will most likely encounter lists with different tools or functions that you use. Oftentimes a tool will need a list as input, so that all the information needed to run the tool is present in a single variable.




## 1.3

#### What are functions?
-  Functions are “self contained” modules of code that accomplish a specific task.
- Functions usually take in some sort of data structure (value, vector, dataframe etc.), process it, and return a result.
#### Basic Fuctions
- Since R is used for statistical computing, many of the base functions involve mathematical operations. 




## 1.4

#### Reading Data into R
- Comma separated values, csv --> read.csv(), read_csv()
- Tab separated values, tsv --> read_tsv()
- Other delimited formats, txt --> read.table(), read_table(), read_delim()
In addition to plain text files, you can also import data from other statistical analysis packages and Excel using functions from different packages.
- Stata version 13-14,	dta,	readdta(),	haven
- Stata version 7-12,	dta,	read.dta(),	foreign
- SPSS,	sav,	read.spss(),	foreign
- SAS,	sas7bdat,	read.sas7bdat(),	sas7bdat
- Excel,	xlsx, xls,	read_excel(),	readxl (tidyverse)

#### List of functions for data inspection
All data structures - content display:
- str(): compact display of data contents (similar to what you see in the Global environment)
- class(): displays the data type for vectors (e.g. character, numeric, etc.) and data structure for dataframes, matrices, lists
- summary(): detailed display of the contents of a given object, including descriptive statistics, frequencies
- head(): prints the first 6 entries (elements for 1-D objects, rows for 2-D objects)
  - tail(): prints the last 6 entries (elements for 1-D objects, rows for 2-D objects)
Vector and factor variables:
- length(): returns the number of elements in a vector or factor
Dataframe and matrix variables:
- dim(): returns dimensions of the dataset (number_of_rows, number_of_columns) [Note, row numbers will always be displayed before column numbers in R]
- nrow(): returns the number of rows in the dataset
- ncol(): returns the number of columns in the dataset
- rownames(): returns the row names in the dataset
- colnames(): returns the column names in the dataset




## 2.1

#### Selecting data using indices and sequences
we often want to partition the data so that we are only working with selected columns or rows.
-A data frame or data matrix is simply a collection of vectors combined together.

##### vectors
Selecting using indices with logical operators
- >: greater than
- >=: greater than or equal to
- <: less than
- <=: less than or equal
- ==: equal to
- !=: not equal
- &: and
-|: or

#### Factors
Since factors are special vectors, the same rules for selecting values using indices apply. The elements of the expression factor created previously had the following categories or levels: low, medium, and high.




## (2.2)
Packages are collections of R functions, data, and compiled code in a well-defined format, created to add specific functionality. There are 10,000+ user contributed packages and growing.

## (2.3)
Data wrangling: dataframes, matrices, and lists

