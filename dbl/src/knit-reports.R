library(knitr)
library(ascii)

KnitReports <- function (season, regseasTeam, regseasPlyr) {
  outputBaseDir <- file.path('../site/pages', 'reports', season)
  unlink(outputBaseDir,recursive=TRUE)
  dir.create(outputBaseDir, recursive=TRUE, showWarnings=FALSE)
  
  print(paste("generating report for season ", season, "into", outputBaseDir  ))
  
  knit('./knitr/teamindicators_regular_season.Rrst')
  
  fromFiles <- list.files(".", ".rst$", full.names = TRUE)
  fromFiles <- c(fromFiles, "./figure")
  
  toFiles <- file.path(outputBaseDir, fromFiles)
  
  file.rename(fromFiles, toFiles)
}