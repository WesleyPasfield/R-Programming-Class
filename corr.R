corr <- function(directory, threshold = 0) {
        files_list <- list.files(directory, full.names=TRUE)    
        correlations <- c()
        
        for (i in 1:332) {
                file_data <- read.csv(files_list[i])
                completecases <- file_data[complete.cases(file_data),]
                if(nrow(completecases) > threshold) {
                        correlations <- c(correlations, cor(completecases$sulfate, completecases$nitrate))
                }
        }
        return(correlations)
}
               
        
