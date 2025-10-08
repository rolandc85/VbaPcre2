rankall <- function(outcome, num = "best") {
    
    ## Read outcome data
    outcome_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    outcomes_index <- c(11, 17, 23)
    valid_outcomes <- c("heart attack", "heart failure", "pneumonia")
    outcome_match_idx <- match(outcome, valid_outcomes)
    ## Check that outcome is valid
    if (is.na(outcome_match_idx)) {
        stop("invalid outcome")
    }
    outcome_match_idx <- outcomes_index[outcome_match_idx]
    
    ordered_states <- sort(unique(outcome_data$State))
    
    outcome_data[, outcome_match_idx] <- as.numeric(outcome_data[, outcome_match_idx])
    
    hospital_names = c()
    for (i in 1:length(ordered_states)) {
        state_data <- subset(outcome_data, outcome_data$State == ordered_states[i])
        
        decreasing = F
        
        index = num
        if (num == "best") {
            index = 1
        } else if (num == "worst") {
            decreasing = T
            index = 1
        }
        
        #break ties by specifying 2nd argument to sort
        ordered_data <- order(state_data[,outcome_match_idx], state_data[,2], na.last=T, decreasing = decreasing)
        
        hospital_names[i] = state_data[ordered_data[index], 2]
    }
    ## Return the data frame of 2 columns
    data.frame(hospital = hospital_names, state = ordered_states)
    
}