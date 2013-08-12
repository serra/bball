# download data
source("./src/download.r")

season <- "2012-2013" 

message("downloading ", season, " ...")
fileName <- downloadseason(season)
message("saved as ", fileName)