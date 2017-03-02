corr <- function(directory, threshold = 0) {
    
    complete_data = complete(directory)
    
    #define the function that calculate the cor given a file_id
    calc_cor_for_file <- function(file_name, file_id) {
        #ensure that observed case is greater than the threshold
        if (subset(complete_data, id == file_id)$nobs > threshold) {
            data = read.csv(file.path(directory, file_name))
            
            #using of complete.obs removes the data that has NA
            cor(data$sulfate, data$nitrate, use = "complete.obs")
        }
    }
    
    correlation_data <- c()
    file_names = list.files(directory)
    id = 1:332
    
    for (file_id in id) {
        correlation_data = c(correlation_data, calc_cor_for_file(file_names[file_id], file_id))
    }

    correlation_data
}