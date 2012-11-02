# Create pdf with advanced team stats
source("./src/ReportTeamRatings.r")

season <- "2012-2013" 

regseasTeam <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_team_stats.csv", season))

PrintTeamRatings(regseasTeam, sprintf("./output/%s_regseas_advanced_teamRatings.pdf", season))