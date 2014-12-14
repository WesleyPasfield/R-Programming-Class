pollutantmean <- function(directory, pollutant, id = 1:332) {
        files_list <- list.files(directory, full.names=TRUE)
        pollutant_list = numeric()
        
        for (i in id) {
                pollutant_list = c(pollutant_list, read.csv(files_list[i]) [[pollutant]])
        }
        mean(pollutant_list, na.rm = TRUE)
}