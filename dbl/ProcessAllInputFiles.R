# Processes all files in ./input/ and outputs csv files with advanced stats

source("./src/CalculateAdvancedGameStats.r")
source("./src/ReportTeamRatings.r")

inputFiles <- list.files("./input/", full.names="true")

for(fileName in inputFiles) {
  message("processing ", fileName, " ...")
  season <- substr(fileName,9,23)
  
  CreateAdvancedStatsFiles(fileName)
  
  regseas <- read.csv2(sprintf("./output/%s_regseas_advanced_team_stats.csv", season))
  playoffs <- read.csv2(sprintf("./output/%s_playoffs_advanced_team_stats.csv", season))
}