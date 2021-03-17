# Pollutantmean function

pollutantmean <- function(directory = "specdata", pollutant = "sulfate", id = 1:332){
  #directory is a character vector of length 1 indicating 
  # the location of the csv files
  
  # 'pollutant' is a character vector of length 1 indicating
  # the name of the pollutant for which we will calculate 
  # the mean; either 'sulfate' or 'nitrate'
  
  # 'id' is the integer vector indicating the monitor id
  # numbers to be used
  
  # Return the mean of the pollutant across all monitors list
  # in the 'id' vector (remove NA values)
  # NOTE! Do not round the result

  # set directory
  setwd(paste("C:/Users/giffin/Documents/R/Projects/Coursera_R_Programming/Week2/rprog_data_specdata/", directory, sep = ""))
  
  # read files into df
  # file name indicates monitor ID
  files <- paste(formatC(id, width = 3, flag = "0"), ".csv", sep = "")
  # Data files contain 4 columns: "Date","sulfate","nitrate","ID"
  dframe <- do.call(rbind, lapply(files, read.csv))
  # for loop
  # for (i in filenames) {
  #   print(filenames)
  #   scandatatable <- read.csv(filenames)
  # }
  # print(getwd())
  # print(files)
  # print(pollutant)
  # print(head(dtable), n = 10)
  # calculate mean of 'pollutant'; set na.rm = TRUE
  # can use variable substitution with the extract operator
  mean(dframe[[pollutant]], na.rm = TRUE)
}
