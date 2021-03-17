# complete function

corr <- function(directory = "specdata", threshold = 0) {
  ## 'directory' is a character vector of 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating
  ## the number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate, the default is 0
  
  ## return a numeric vector of correlations
  ## NOTE: do not round the result

  id = 1:332
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
  vec <- c()
  columns <- c("id", "nobs", "cor")
  for (i in id) {
    f <- paste(formatC(i, width = 3, flag = "0"), ".csv", sep = "")
    x <- read.csv(f)
    y <- sum(complete.cases(x))
    if (y > threshold) {
      w <- cor(x = x$sulfate, y = x$nitrate, use = "complete.obs")
    }
      else {
        next
      }
    z <- c(i, y, w)
    dat <- rbind(dat, z)
    vec <- append(vec, w)
  }
  colnames(dat) <- columns
  vec
}
