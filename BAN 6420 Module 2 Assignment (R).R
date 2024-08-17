library(utils)

#set working directory
setwd("~/Nexford Data")

#assign zipped file to a variable

zipfile<-"EmployeeProfile.zip"

#create a function to unzip and list the file.

unzip_file <- function(zipfile){
  
  tryCatch({
    
    #unzipping the file
    unzip(zipfile, exdir = ("~/Nexford Data") )
    cat("files successfully unzipped")
  }, error = function(e) {
    cat("oops, an error occurred: ", e$message, "\n")
    
    })
}

#Call function to unzip file

unzip_file(zipfile)

#reading the unzipped csv file

EmployeeRecord <- read.csv(file = "~/Nexford Data/EmployeeDetails.csv")
print(EmployeeRecord) 
