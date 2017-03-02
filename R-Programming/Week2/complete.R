complete <- function(directory, id = 1:332) {
    #load all the file of the directory into a variable
    file_names = list.files(directory)
    
    #initialize the pollu_data to be empty vector
    id_vector = c()
    complete_cases = c()
    
    for (file_id in id) {
        #start reading the file
        data = read.csv(file.path(directory, file_names[file_id]))
        
        #append id_vector
        id_vector = c(id_vector, file_id)
        
        complete_cases_data = complete.cases(data)
        no_of_complete_cases = length(complete_cases_data[complete_cases_data == TRUE])
        
        #append complete_cases
        complete_cases = c(complete_cases, no_of_complete_cases)
    }
    
    data.frame(id = id_vector, nobs = complete_cases)
}