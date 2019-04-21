#Wrangling Data
                  #References
                      #data camp tutorials datacamp.com
                      #ADS lecture notes and R documentation

#Step 1: Understanding the structure of the data
    class(data_set)       #returns the class of the object (are you working with a datafram obj?)
    dim(data_set)         #returns the dimension of your data set (how many variable/observations do you have?)
    names(data_set)       #returns the names of all the column headers

    str(data_set)         #returns a list of all columns (name, class, content)

  library(dplyr)
    glimpse(data_set)     #similar to str() but displays as much data as possible      

    summary(data_set)     #returns summary of each of the columns in the dataset
                          #numerics (summary statistics plus NA count), character (length), logical (T/F & NA count)
    
    head(data_set, n = )  #returns the first six rows of the data set, unless n is specified 
    tail(data_set, n = )  #returns the last six rows of the data set, unless n is specified

#Step 2: Manipulating the data so the following rules are followed
              # a) each variable forms a column
              # b) each row forms an observation
              # c) each type of observational unit forms a table

  library(dplyr)      #dplyr pkg gives you functions to investigate and manipulate data
                          #examples are given for a data_set with a column labeled 'age'
    summarize()           #often used with the group_by function reduces group to single row information such as summary stats
      data_set %>% group_by(age) 
               %>% summarize(length(age)) #groups all of the like ages together and summarizes then by a count of each
    
    mutate()              #adds a column to data through a function of existing data ie(col3 = col2 + col1)
      data_set %>% mutate(newage = age*2) #adds a column 'newage' which is each age doubled
    
    arrange()             #orders rows according to one or more variables 
      data_set %>% arrange(age)        #will return rows arranged by ascending age
      data_set %>% arrange(desc(age))  #will return rows arranged by descending age
    
    filter()              #reutrns a subset of rows
      data_set %>% filter(age > 10)    #will return all rows where age is greater than 10
      
    select()              #returns a subset of columns
      data_set %>% select(age)         #returns only the age columns of the dataset

  library(tidyr) #
    gather(data_set, key, value)                             #use when you have columns headers in a dataframe that are values not variables
                                                             #makes a wide table long
    
    separate(data_set, into = c("col1", "col2"), sep = " ")  #use when multiple variable are stored in one column
    
    spread(dataframe, key, value)                            #makes a long table wide
                                  

#Step 3: Prepare your data for analysis with the following functions

  library(stringr) # four main functions; A)character manipulation, B) whitespace manipulation, C) pattern matching, D)locale sensititve
    # A)length of string
        str_length(string)
        
    # B)removes whitespace from the beginning and end of string
        str_trim(string, "both")     # 2 arguments; what you want to trim, string, 
                                                # from which side should it be trimmed, ("both", "left", "right")
    # B)adds whitespace to a string
        str_pad(string, width, "both" , pad = ) # 4 arguments; what you want to pad, string 
                                                # what the width of the string should be, width
                                                # from which side should it be trimmed, ("both", "left", "right")
                                                # how should the sting be padded,  pad = ""
    # C)searches for string in vector
        str_detect(string, pattern)  # 2 arguements; what to look in, string
                                                # what pattern to detect, pattern
    # C)replaces string in vector
        str_replace(string, pattern, replace) # 3 arguements; what to look in, string
                                                # what pattern to detect, pattern
                                                # what to replace the pattern with, replace
    # D)change case of string
        str_to_lower(string)        #changes string to all lower case characters
        str_to_upper(string)        #changes strign to all upper case characters

  #makes it easier to work with dates and times in R by putting them into standardized formats
  library(lubridate)
    #examples
      mdy("01252007")      #returns '2007-01-25' standard date format
      ymd("2007/01/25")    #returns '2007-01-25' standard date format
      dmy("25-01-2007")    #returns '2007-01-25' standard date format
      


