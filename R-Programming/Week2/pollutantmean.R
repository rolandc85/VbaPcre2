pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    
    #load all the file of the directory into a variable
    files_names = list.files(directory)
    
    #initialize the pollu_data to be empty vector
    pollu_data = c()
    
    for (fileId in id) {
        #start reading the file
        data = read.csv(file = paste(directory, '/',file_names[fileId], sep = ''))
                        
        #extract the column
        current_file_data = data[,pollutant]
        
        #filter off the NA data
        pollu_data = c(pollu_data, current_file_data[!is.na(current_file_data)])
    }
    
    #calculate the mean of the joined data
    mean(pollu_data)
}
