# download data
source("./src/download.r")

season <- ""

args<-commandArgs(TRUE)

if(length(args) == 0) {
  season = Sys.getenv("SEASON")
} else {
  season <- args[1]  
}

message("downloading ", season, " ...")
fileName <- downloadseason(season)
message("saved as ", fileName)