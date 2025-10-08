rankhospital <- function(state, outcome, num = "best") {
    
    ## Read outcome data
    outcome_data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    outcomes_index <- c(11, 17, 23)
    valid_outcomes <- c("heart attack", "heart failure", "pneumonia")
    outcome_match_idx <- match(outcome, valid_outcomes)
    ## Check that state and outcome are valid
    if (is.na(outcome_match_idx)) {
        stop("invalid outcome")
    }
    outcome_match_idx <- outcomes_index[outcome_match_idx]
    
    valid_states <- unique(outcome_data$State)
    state_match_idx <- match(state, valid_states)
    if (is.na(state_match_idx)) {
        stop("invalid state")
    }
    
    outcome_data[, outcome_match_idx] <- as.numeric(outcome_data[, outcome_match_idx])
    state_data <- subset(outcome_data, outcome_data$State == state)
    
    decreasing = F
    
    if (num == "best") {
        num = 1
    } else if (num == "worst") {
        decreasing = T
        num = 1
    }
    
    #break ties by specifying 2nd argument to sort
    ordered_data <- order(state_data[,outcome_match_idx], state_data[,2], na.last=T, decreasing = decreasing)
    ## Return hospital name in that state with lowest 30-day death rate
    state_data[ordered_data[num], 2]
}