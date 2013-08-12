# download data
source("./src/download.r")

args<-commandArgs(TRUE)
season <- args[0]

message("downloading ", season, " ...")
fileName <- downloadseason(season)
message("saved as ", fileName)