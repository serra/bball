# Create data files with advances stats

source("./src/download.r")
source("./src/CalculateAdvancedGameStats.r")
source("./src/ReportTeamRatings.r")
source("./src/knit-reports.R")

args<-commandArgs(TRUE)

if(length(args) == 0) {
  season = "2014-2015"
} else {
  season <- args[1]  
}

fileName <- GetInputFileName(season)
CreateAdvancedStatsFiles(fileName)

# read to check results:
regseasTeam <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_team_stats.csv", season))
regseasPlyr <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_player_stats.csv", season))

teamTotals <- CalcualteTeamTotals(regseasTeam)
write.csv2(teamTotals, sprintf("./output/heren_%s_regseas_team_totals.csv", season))

# suitable for google docs:
googleTeamFile <- sprintf("./output/heren_%s_regseas_advanced_team_stats_google.csv", season)
googlePlayerFile <- sprintf("./output/heren_%s_regseas_advanced_player_stats_google.csv", season)

# write.csv complies to google's csv expectations,
# while write.csv2 complies to Excel in most Western European locales
# see help(write.csv) for details
write.csv(regseasTeam, googleTeamFile)
write.csv(regseasPlyr, googlePlayerFile)

# regseasTeamTotalsCalculateTotals(regseasTeam)
KnitReports(season, regseasTeam, regseasPlyr)
