

filenames <- list.files("Capstone Data", pattern="*.csv", full.names=TRUE)
ldf <- lapply(filenames, read.csv)
library(dplyr)
df <- bind_rows(ldf, .id = "column_label")
