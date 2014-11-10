# example: http://west.basketball.nl/db/overzicht/heren_ere_stats.pl?seizoen=2008-2009
downloadseason <- function(seasonId) {
  baseUrl <- "http://west.basketball.nl/db/overzicht/heren_ere_stats.pl?seizoen="
  url <- paste(baseUrl, seasonId, sep="")
  dest <- GetInputFileName(seasonId)
  download.file(url, dest, "auto")
  return(dest)
}

GetInputFileName <- function (seasonId) {
  return(paste("./input/heren_", seasonId, ".csv", sep =""))
}


DownLoadAll <- function() {
  seasonStarts <- 2000:2014
  allSeasons <- paste(seasonStarts, seasonStarts+1, sep="-")
  
  for(s in allSeasons) {
    downloadseason(s)
  }
}
