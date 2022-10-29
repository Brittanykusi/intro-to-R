#Packages and libraries

#You can check what libraries are loaded in your current R session by typing into the console:
sessionInfo() #Print version information about R, the OS and attached or loaded packages

# OR

search() #Gives a list of attached packages

#Package installation from CRAN
install.packages("ggplot2")

#Package installation from Bioconductor
# DO NOT RUN THIS!

#install.packages("BiocManager")

#Once you have the package installed, you can load the library into your R session for use. 
library(ggplot2)# you need to load this library anytime you want to use it
sessionInfo()

#Exercise
#The ggplot2 package is part of the tidyverse suite of integrated packages which was designed to work together to make common data science operations more user-friendly. We will be using the tidyverse suite in later lessons, and so let’s install it. NOTE: This suite of packages is only available in CRAN.
install.packages("tidyverse")
library(tidyverse)
sessionInfo()
