library(aws.s3)
library(lubridate)
library(aws.ec2metadata)

dfRand <- data.frame(
  colA = runif(10),
  colB = runif(10),
  colC = runif(10)
)

filnm <- paste0("success_", format(now(), "%Y-%d-%m__%H-%M"))
filpath <- "s3://strat-testing/testECS"
filobj <- file.path(filpath, filnm)

s3write_using(x = dfRand,
              FUN = write.csv, row.names = F,
              object = filobj)
