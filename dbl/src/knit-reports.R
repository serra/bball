library(knitr)

KnitReports <- function (season, regseasTeam, regseasPlyr) {
  print(paste("generating report for season ", season))
  
  knit('./knitr/teamindicators_regular_season.Rrst')
}