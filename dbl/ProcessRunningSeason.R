# Create data files with advances stats for the 2012-2013 season

source("./src/CalculateAdvancedGameStats.r")
source("./src/download.r")

args<-commandArgs(TRUE)
season <- args[0]

fileName <- GetInputFileName(season)
CreateAdvancedStatsFiles(fileName)

# read to check results:
regseasTeam <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_team_stats.csv", season))
regseasPlyr <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_player_stats.csv", season))

# suitable for google docs:
googleTeamFile <- sprintf("./output/heren_%s_regseas_advanced_team_stats_google.csv", season)
googlePlayerFile <- sprintf("./output/heren_%s_regseas_advanced_player_stats_google.csv", season)

# write.csv complies to google's csv expectaions,
# while write.csv2 complies to Excel in most Western European locales
# see help(write.csv) for details
write.csv(regseasTeam, googleTeamFile)
write.csv(regseasPlyr, googlePlayerFile)
