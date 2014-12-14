complete <- function(directory, id=1:332) {
        files_list <- list.files(directory, full.names=TRUE)
        nobs <- numeric()
        
        for (i in id) {
                data <- read.csv(files_list[i])
                ok <- sum(complete.cases(data))
                nobs <- c(nobs, ok)
        }
        data.frame(id=id, nobs=nobs)
}