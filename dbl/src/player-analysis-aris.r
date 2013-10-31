scoringByTeam <- function (team, playerStats) {
  cols <- colnames(playerStats)
  byTeam <- playerStats[playerStats$plg_Name == team, cols]
  byTeam <- na.omit(byTeam)
  print(ScoringEfficiency(byTeam))
}

scoringByTeam("BV Aris", regseasPlyr)
scoringByTeam("EBBC", regseasPlyr)

#PlayMakers(sts)
