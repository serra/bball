# Create data files with advances stats for the 2012-2013

source("./src/CalculateAdvancedGameStats.r")
source("./src/download.r")

season <- "2012-2013" 
fileName <- GetInputFileName(season)
CreateAdvancedStatsFiles(fileName)

# read to check results:
regseasTeam <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_team_stats.csv", season))
regseasPlyr <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_player_stats.csv", season))
