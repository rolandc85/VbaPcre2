best <- function(state, outcome) {
    
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

    min_rate <- min(state_data[,outcome_match_idx], na.rm = TRUE)
    
    filtered_data <- subset(state_data, state_data[,outcome_match_idx] == min_rate)
    hospitals <- sort(filtered_data$Hospital.Name)
    hospitals[1]
    
    ## Return hospital name in that state with lowest 30-day death rate
}