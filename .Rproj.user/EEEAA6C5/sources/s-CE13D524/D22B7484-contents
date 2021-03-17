# complete function

complete <- function(directory = "specdata", id = 1:332){
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV filenames
    
    ## 'id' is an integer vector containing the monitor ID numbers to be Used
    
    ## Return a data frame of the form:
    ## id nobs
    ## 1  117
    ## 2 1047
    ## ...
    ## where 'id' is the monitor ID number and 'nobs' is the
    ## number of complete cases
    
  # set directory
  setwd(paste("C:/Users/giffin/Documents/R/Projects/Coursera_R_Programming/Week2/rprog_data_specdata/", directory, sep = ""))
  
  # read files into df
  # file name indicates monitor ID
  # files <- paste(formatC(id, width = 3, flag = "0"), ".csv", sep = "")
  # Data files contain 4 columns: "Date","sulfate","nitrate","ID"
  # complete_counts <- lapply(files, function(x) sum(complete.cases(x)))
  # complete.cases
  # complete <- sum(complete.cases(files))
  dat <- data.frame()
  columns <- c("id", "nobs")
  for (i in id) {
    f <- paste(formatC(i, width = 3, flag = "0"), ".csv", sep = "")
    x <- read.csv(f)
    y <- sum(complete.cases(x))
    z <- c(i, y)
    dat <- rbind(dat, z)
  }
  colnames(dat) <- columns
  dat
}
