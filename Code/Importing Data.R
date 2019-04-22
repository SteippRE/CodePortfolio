#Importing Data
                   #References
                        #data camp tutorials datacamp.com
                        #ADS lecture notes and R Documentation

    getwd() #gives you the current working directory
    setwd() #sets working directory
    
  #Read Files
    library(readr)  #readr library main function is to parse a flat file into a tibble
    
    #Following are four ways to read in files from the readr library
                                            #col_names by default is TRUE, can be set to FALSE if no column names exist or
                                            #a character string can be created to us as column names  ie c("A", "B", "C")
                                            #col_types by default are assess by R, but they can be set with a string "cdil_"
                                            #for each column c = character, d = double, i = integer, l = logical, _ = skip col
      read_delim("path to file.txt", delim = , col_names = , col_types = ) #reads a table such as a text file as a dataframe 
                                            #delim = what is the separating factor (comma, forward slash, tab, etc.)
    
      read_csv("path to file.csv", col_names = , col_types = ) #reads csv file where a common is the delimiter and header is default TRUE
    
      read_csv2("path to file.csv", col_names = , col_types = ) #reads csv file where a semicolon is the delimiter and header is default TRUE
    
      read_tsv("path to file.txt", col_names = , col_types = )  #reads file where a tab is the delimiter and hearder is default TRUE
    
    library(data.table)           #library created for faster development including but not limited to read, write, aggregations
      fread("path to file")       #a faster and more effecient way to read in a flatfile than readr functons
    
    library(readxl)  #library used for reading in excel files
      excel_sheets("path to excel file")  #returns the names as char str of the excel sheets in this file
      
      read_excel("path to excel file")    #reads in the first sheet in the excel file, can specify which sheet to read in
      
          read_excel("path to excel file", sheet = ) #sheet can either be the number of the sheet index or the name of the sheet
          
          read_excel("path to excel file", col_names = , col_types = , skip = ) #col_names is default to TRUE can be set ith a c()
                                                                                #col_types is default to be asessed by R
                                                                                #but can also be set c("text", "numeric", "date", "blank")
                                                                                #"blank" will skip the column
                                                                                #skip is set to the number of row to skip before importing if this
                                                                                #is done then header row no longer exists