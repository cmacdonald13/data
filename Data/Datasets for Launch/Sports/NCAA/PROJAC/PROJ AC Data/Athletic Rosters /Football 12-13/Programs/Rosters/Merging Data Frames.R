filenames <- list.files()
temp = list.files(pattern="*.csv")
for (i in 1:length(temp)) assign(temp[i], read.csv(temp[i]))
filenames <- list.files(path = ".", pattern='^.*\\.csv$')
my.df <- do.call("rbind.fill", lapply(filenames, read.csv, header = TRUE))
write.csv(my.df,"All Colleges Roster Data.csv")