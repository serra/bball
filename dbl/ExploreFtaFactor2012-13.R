# Processes all files in ./input/ and outputs csv files with advanced stats
#
# Optionally print additional team ratings report, buth this is commented out,
# because it take too much time.

source("./src/CalculateAdvancedGameStats.r")
source("./src/download.r")

season <- "2011-2012"

fileName <- GetInputFileName(season)

#factorsToExplore <- seq(0.0, 0.50, 0.05) # also interesting
factorsToExplore <- seq(0.4, 0.50, 0.01)

for(f in factorsToExplore) {
  ftaFactor <- f
  CreateAdvancedStatsFiles(fileName)
  regseasTeam <- read.csv2(sprintf("./output/heren_%s_regseas_advanced_team_stats.csv", season))
    
  print(sum(regseasTeam$WARNING))
  
  diffs <- abs(regseasTeam$ps - regseasTeam$opp_ps)
  qts <- quantile(diffs,probs=c(.00,.90))
  
  hist(diffs,ylim=c(0,120),xlim=c(0,30))
  mtext(paste(ftaFactor, qts[2], sep=" / "), side=4)
  #mtext(summary(abs(regseasTeam$ps - regseasTeam$opp_ps)),side=2)
  # note that every game occurs TWICE in the stat file

}


