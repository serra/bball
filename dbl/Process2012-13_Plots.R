# Create data files with advances stats for the 2012-2013
source("./src/ReportTeamRatings.r")

season <- "2012-2013" 
fileName <- GetInputFileName(season)

regseasTeam <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_team_stats.csv", season))
regseasPlyr <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_player_stats.csv", season))

# plot teamplots
print(OrtgByTeamPlot(regseasTeam))
print(drtgByTeamPlot(regseasTeam))
print(nrtgByTeamPlot(regseasTeam))
print(TeamRatingQuadrantPlot(regseasTeam))