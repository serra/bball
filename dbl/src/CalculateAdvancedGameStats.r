#
# Takes a csv file and calculates the teamStats data frame
#

library(sqldf)
library(plyr)

############
#
# Constants
# 
############

ftaFactor <- 0.46

secondChanceFactor <- 1.07

############
#
# Functions
#
############

substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

GetCompetitions <- function(allStats) {
  # 421: regular season, 627: playoffs
  sql <- paste("select cmp_ID, min(wed_Datum) as StartDate,",
               " count(*) as NrGameLines",
               "from allStats",
               "where cmp_ID=421 or cmp_ID=627",
               "group by cmp_ID",
               "order by min(wed_Datum)"
  )

  comps <- sqldf(sql)
  
  startYear <- as.numeric(substr(comps[1,"StartDate"],1,4))
  comps <- transform(comps,
                       Desc = paste("heren",paste(startYear,startYear+1,sep="-"),sep="_"))
  
  # should work too if there's only one competitions, hence the slicing
  compDescriptions <- c("regseas","playoffs")[1:nrow(comps)] 
  
  comps$Desc <- paste(comps$Desc,compDescriptions,sep="_")
  
  return(comps)
}

CreateAdvancedStatsFiles <- function (fileName) {
  sts <- read.csv2(fileName)
  sts <- transform(sts, spl_ID = paste(plg_ID,  
                                       spl_Voornaam, 
                                       spl_tussen,
                                       spl_Achternaam))
  comps <- GetCompetitions(sts)
  nrComps <- nrow(comps)
  
  message(sprintf("Analyzing %i competition(s):", nrComps))
  print(comps)
  
  for(i in 1:nrComps) {
    compDesc <- comps[i,"Desc"]
    message(sprintf("Processing %s ... ", compDesc))
    
    compStats <- sts[which(sts$cmp_ID==comps[i,"cmp_ID"]),]
    compStats <- FilterOutRetreatedTeams(compStats, compDesc)
        
    PrintCompetitionStatistics(compStats)
    CreateAdvancedStatsFilesForCompetition(compStats, 
                                           compDesc)
  }
}

FilterOutRetreatedTeams <- function(compStats, compDesc) {
  if(grepl("heren_2014-2015", compDesc))
  {
    message("removing Den Helder for the 2014-2015 season")
    compStats <- subset(compStats, thuis_club!="Den Helder Kings Noordkop")      
    compStats <- subset(compStats, uit_club!="Den Helder Kings Noordkop")
  }
  return(compStats)
}

PrintCompetitionStatistics <- function(sts) {
  games <- sqldf("select wed_ID from sts group by wed_ID")
  teams <- GetTeams(sts)
  message(sprintf("Processing %i games by %i teams, with %i player stat lines",
                  nrow(games),nrow(teams),nrow(sts)))
  print(teams)
  if(nrow(teams) < 8) {
    warning("Only found ", nrow(teams), " teams - are you missing some teams?")
  }
}

GetTeams <- function(sts) {
  teamsThuis <- sqldf(paste("select plg_ID, thuis_club as plg_Name from sts",
                            "where plg_ID = wed_ThuisPloeg",
                            "group by plg_ID, thuis_club"))
  
  teamsUit <- sqldf(paste("select plg_ID, uit_club as plg_Name from sts",
                            "where plg_ID = wed_UitPloeg",
                            "group by plg_ID, uit_club"))
  
  teams <- rbind(teamsThuis,teamsUit)
  teams <- sqldf(paste("select plg_ID, plg_Name from teams",
                                       "group by plg_ID, plg_Name"))
    
  return(teams)
}

CreateAdvancedStatsFilesForCompetition <- function (sts, compdesc) {
    
  ###############################
  #
  # Prepare teamStats data frame
  #
  ###############################
  
  advancedTeamsStatsOutputFile <- paste("./output/", compdesc, "_advanced_team_stats.csv", sep="")
  advancedPlayerStatsOutputFile <- paste("./output/", compdesc, "_advanced_player_stats.csv", sep="")
      
  teamStats <- GetAdvancedTeamStats(sts) 
  playerStats <- GetAdvancedPlayerStats(sts, teamStats)
  
  
  message("Writing result file ", advancedTeamsStatsOutputFile)
  write.csv2(teamStats, advancedTeamsStatsOutputFile)
  
  message("Writing result file ", advancedPlayerStatsOutputFile)
  write.csv2(playerStats, advancedPlayerStatsOutputFile)
  
  return(c(advancedTeamsStatsOutputFile,advancedPlayerStatsOutputFile))
}

GetNormalizedTeamStats <- function(sts) {
  psData <- data.frame(sts$wed_ID, sts$plg_ID, sts$wed_UitPloeg, sts$wed_ThuisPloeg, 
                       sts$scu_FTA, sts$scu_FTM, sts$scu_FGA, sts$scu_FGM, sts$scu_3PM,  
                       sts$scu_3PA, 
                       sts$scu_OffRebounds, sts$scu_DefRebounds, sts$scu_TurnOvers,
                       sts$scu_Minuten,
                       sts$scu_Fouten, sts$scu_Assists, sts$scu_Steals, sts$scu_Blocks)
  
  # prettify
  names(psData) <- sub("^sts.", "", names(psData))        
  names(psData) <- sub("scu_", "", names(psData))
  names(psData) <- sub("OffRebounds", "OR", names(psData))
  names(psData) <- sub("DefRebounds", "DR", names(psData))
  names(psData) <- sub("TurnOvers", "TO", names(psData))
  names(psData) <- sub("Fouten", "PF", names(psData))
  names(psData) <- sub("Assists", "Ast", names(psData))
  names(psData) <- sub("Steals", "Stl", names(psData))
  names(psData) <- sub("Blocks", "Blk", names(psData))
  names(psData) <- sub("^FG", "FG2", names(psData))
  names(psData) <- sub("3P", "FG3", names(psData))
  
  teams <- GetTeams(sts)
  
  sqlThuis <- paste("select wed_ID, plg_ID, wed_UitPloeg, wed_ThuisPloeg, ", 
                    "max(wed_TeamOffRebThuis) as [OR], ",
                    "max(wed_TeamDefRebThuis) as DR, ", 
                    "max(wed_TeamTurnOverThuis) as [TO] ",
                    "from sts where plg_Id=wed_ThuisPloeg ",
                    "group by wed_Id, plg_ID, wed_UitPloeg, wed_ThuisPloeg")
  
  stsThuis <- sqldf(sqlThuis)
  
  # add zeros for missing columns
  missingCols <- setdiff(names(psData), names(stsThuis))  # get missing cols
  stsThuis[missingCols] <- 0                              # add to stsThuis, fill with 0 
  
  sqlUit <- gsub("Thuis", "Uit", sqlThuis)
  sqlUit <- gsub(", wed_UitPloeg, wed_UitPloeg,", ", wed_UitPloeg, wed_ThuisPloeg,", sqlThuis)  # bug fix :)
  stsUit <- sqldf(sqlUit)
  stsUit[missingCols] <- 0 
  
  # merge the data frames to obtain a frame we can aggregate on by wed_ID and plg_ID
  psData <- rbind(psData, stsThuis, stsUit)
  
  # aggregate by game and team
  agg <- aggregate(psData[5:14] , by=list(wed_ID=psData$wed_ID, plg_ID=psData$plg_ID, wed_UitPloeg=psData$wed_UitPloeg, wed_ThuisPloeg=psData$wed_ThuisPloeg), FUN=sum)
  
  # add team name
  agg <- sqldf("select agg.*, teams.plg_Name from agg inner join teams on agg.plg_ID=teams.plg_ID")
  
  agg <- transform(agg, 
                   plg_ShortName = substr(plg_Name,0,8))
  
  # now we join the tables, so that we have opposing numbers on the same game line
  sqlGameLine = paste("select * from agg ",
                      "inner join agg opp on ",
                      "agg.wed_ID=opp.wed_ID and (",
                      "(agg.plg_ID = agg.wed_ThuisPloeg and opp.plg_ID = opp.wed_UitPloeg) or ",
                      "(agg.plg_ID = agg.wed_UitPloeg and opp.plg_ID = opp.wed_ThuisPloeg) ",
                      ")",
                      "",
                      "order by wed_ID"
  )
  
  teamStats <- sqldf(sqlGameLine) 
  
  # pretify columns; opponents columns are prefixed with "opp_"
  nrCols <- dim(teamStats)[2]/2
  oppCols <- paste("opp", names(teamStats)[nrCols+1:nrCols], sep="_")
  #sqldf adds ..17 to colnames, only keep part before ..
  #e.g. "opp_wed_ID..17"         "opp_plg_ID..18"
  #     "opp_wed_ID"             "opp_plg_ID"
  oppCols <- sapply(oppCols, function(x) unlist(strsplit(x, '[..]'))[1]) 
  names(teamStats)[nrCols+1:nrCols] <- oppCols
  
  # sanity checks ...
  CheckMinutesPlayed(teamStats)
  
  return(teamStats)
}

AppendFTTrips <- function(teamStats) {
  return(
    transform(teamStats,
            FTtrips = ftaFactor*FTA,
            opp_FTtrips =  ftaFactor*opp_FTA
    )
  )
}

AppendRatings <- function(teamStats) {
  ts <- transform(teamStats,
                         Ortg = 100 * pts / avgps,
                         Drtg = 100 * opp_pts / avgps)
  ts <- transform(ts,
                         Nrtg = Ortg - Drtg)
  return(ts)
}

AppendOwnFourFactors <- function(teamStats) {
  return(
    transform(teamStats,
              EFGpct = (FG2M+1.5*FG3M)/(FG2A+FG3A),
              ORpct = OR / (OR + opp_DR),
              TOpct = TO / avgps,
              FT4f = FTM / (FG2A+FG3A)
    )
  )
}

AppendOpponentFourFactors <- function(teamStats) {
  return(
    transform(teamStats,
              opp_EFGpct = (opp_FG2M+1.5*opp_FG3M)/(opp_FG2A+opp_FG3A),
              opp_ORpct = opp_OR / (opp_OR + DR),
              opp_TOpct = opp_TO / avgps,
              opp_FT4f = opp_FTM / (opp_FG2A+opp_FG3A)
    )
  )
}

GetAdvancedStatsFrame <- function(normalizedTeamStats) {
  #######################################################################
  #
  # Calculate performance indicators and add them to the teamStats frame
  #
  #######################################################################
  
  # ft ftrips
  teamStats <- AppendFTTrips(normalizedTeamStats)
  
  # pts
  teamStats <- transform(teamStats, 
                         pts = FTM + 2*FG2M + 3*FG3M,
                         opp_pts =  opp_FTM + 2*opp_FG2M + 3*opp_FG3M
  )
  
  # win or loss
  teamStats <- transform(teamStats,
                         Win = (pts > opp_pts) ,
                         Loss = (pts < opp_pts)
  )
  
  # a play is a turnover, a ft trip or field goal attempt 
  teamStats <- transform(teamStats, 
                         plays = TO + FTtrips + (FG2A + FG3A),
                         opp_plays = opp_TO + opp_FTtrips + (opp_FG2A + opp_FG3A)
  )
  
  # to calculate possessions, we have to take offensive rebounds into account
  teamStats <- transform(teamStats, 
                         ps = plays - secondChanceFactor * (FG2A + FG3A - FG2M - FG3M) * OR / (OR + opp_DR),
                         opp_ps = opp_plays - secondChanceFactor * (opp_FG2A + opp_FG3A - opp_FG2M - opp_FG3M) * opp_OR / (opp_OR + DR)
  )
  
  # check posessions, pace and indicate if the number of possessions is suspicious
  teamStats <- transform(teamStats,
                         avgps = round((ps + opp_ps) / 2),
                         WARNING = abs(ps-opp_ps) > 4.0,
                         pace = (400/(Minuten+opp_Minuten)) * ((ps + opp_ps) / 2))
  
  # offensive and defensive ratings
  # we use the average posessions, because we think that's the best estimate of the actual number of posessions
  teamStats <- AppendRatings(teamStats)
  
  teamStats <- transform(teamStats,
                         Home =  plg_ID == wed_ThuisPloeg)
  
  # Four factors own
  teamStats <- AppendOwnFourFactors(teamStats)

  # Four factors opp
  teamStats <- AppendOpponentFourFactors(teamStats)
  
  # shooting distribution
  teamStats <- transform(teamStats,
                         FG2Apct = FG2A / (FG2A + FG3A + FTtrips),
                         FG3Apct = FG3A / (FG2A + FG3A + FTtrips),
                         FTTpct = FTtrips / (FG2A + FG3A + FTtrips)
  )
  
  # shooting percentages
  teamStats <- transform(teamStats,
                         FG2pct = FG2M / FG2A,
                         FG3pct = FG3M/ FG3A,
                         FTpct = FTM / FTA
  )
  
  # # point by category
  # teamStats <- transform(teamStats,
  #                      FG2pts = FG2M*2,
  #                      FG3pts = FG3M*3,
  #                      FTpts = FTM
  #                      )
  # 
  # # point contributions
  # teamStats <- transform(teamStats,
  #                      ContrFG2pts = FG2pts/pts,
  #                      ContrFG3pts = FG3pts/pts,
  #                      ContrFTpts = FTpts/pts
  #                      )
  
  return(teamStats)
}

GetAdvancedTeamStats <- function(sts) {
  teamStats <- GetNormalizedTeamStats(sts)

  teamStats <- GetAdvancedStatsFrame(teamStats)
  
  return(teamStats)
}
  
GetAdvancedPlayerStats <- function(sts, teamStats) {
  
  #######################################################################
  #
  # Calculate player performanceindicators by game
  # and join this frame on the teamStats
  #
  #######################################################################
  
  playerStats <- data.frame(sts$wed_ID
                            , sts$plg_ID, sts$scu_Minuten
                            , sts$scu_FTA, sts$scu_FTM, sts$scu_FGA, sts$scu_FGM, sts$scu_3PM  
                            , sts$scu_3PA 
                            , sts$scu_OffRebounds, sts$scu_DefRebounds, sts$scu_TurnOvers
                            , sts$spl_ID
                            , sts$scu_Fouten, sts$scu_Assists, sts$scu_Steals, sts$scu_Blocks
                            )
  
  # prettify
  names(playerStats) <- sub("^sts.", "", names(playerStats))        
  names(playerStats) <- sub("scu_", "spl_", names(playerStats))
  names(playerStats) <- sub("OffRebounds", "OR", names(playerStats))
  names(playerStats) <- sub("DefRebounds", "DR", names(playerStats))
  names(playerStats) <- sub("TurnOvers", "TO", names(playerStats))
  names(playerStats) <- sub("FG", "FG2", names(playerStats))
  names(playerStats) <- sub("3P", "FG3", names(playerStats))
  names(playerStats) <- sub("Fouten", "PF", names(playerStats))
  names(playerStats) <- sub("Assists", "Ast", names(playerStats))
  names(playerStats) <- sub("Steals", "Stl", names(playerStats))
  names(playerStats) <- sub("Blocks", "Blk", names(playerStats))

  sqlPlayersJoinTeam <- paste("select * from teamStats tm ",
                              "inner join playerStats ply on ",
                              "tm.wed_ID = ply.wed_ID and tm.plg_ID = ply.plg_ID ", 
                              "order by wed_ID")
  
  playerStats <- sqldf(sqlPlayersJoinTeam)
  
  
  # minute ratio - what percentage of the game was the player on the floor?
  playerStats <- transform(playerStats,
                           spl_MinutesRatio = (spl_Minuten) / (Minuten / 5)
  )
  
  # how many plays did the player use?
  playerStats <- transform(playerStats,
                           spl_Plays = (spl_FG2A + spl_FG3A + ftaFactor * spl_FTA + spl_TO)
  )
  
  # usage percentage is the number of plays deployed by this player,
  # divided by the estimated number of plays that occured while the player was 
  # on the floor
  playerStats <- transform(playerStats,
                           spl_USGpct = (spl_Plays) 
                           / (spl_MinutesRatio * plays)
  )
  
  # scoring
  playerStats <- transform(playerStats,
                           spl_PTS = spl_FTM + 2*spl_FG2M + 3*spl_FG3M)
  
  # advanced shooting indicators
  playerStats <- transform(playerStats,
                           spl_PPP = spl_PTS / spl_Plays,
                           spl_FTperFG = spl_FTA / (spl_FG2A+spl_FG3A),
                           spl_FG3AperFG =  spl_FG3A / (spl_FG2A+spl_FG3A),
                           spl_EFGpct = (1.5*spl_FG3M + spl_FG2M) / (spl_FG2A+spl_FG3A),
                           spl_TSpct = (spl_PTS / (2 * (spl_FG2A + spl_FG3A + ftaFactor * spl_FTA)))
  )
    
  playerStats <- transform(playerStats,
                           spl_Finishes = (spl_Plays + spl_Ast)
  )
  
  playerStats <- transform(playerStats,
                           spl_Astpct = (spl_Ast) 
                           / (spl_MinutesRatio * (FG2M + FG3M) - spl_FG2M - spl_FG3M)
  )
  
  playerStats <- transform(playerStats,
                           spl_TRpct = (spl_DR+spl_OR) / (spl_MinutesRatio * (DR + OR + opp_DR + opp_OR)),
                           spl_DRpct = (spl_DR) / (spl_MinutesRatio * (DR + opp_OR)),
                           spl_ORpct = (spl_OR) / (spl_MinutesRatio * (OR + opp_DR))
  )
  
  playerStats <- transform(playerStats,
                           spl_Stlpct = (spl_Stl) 
                           / (spl_MinutesRatio * (opp_ps))
  )
  
  # note that block percentage is estimated using 2pt field goal attempts only
  playerStats <- transform(playerStats,
                           spl_Blkpct = (spl_Blk) 
                           / (spl_MinutesRatio * (opp_FG2A))
  )
    
  return (playerStats)
}

CheckMinutesPlayed <- function(sts) {
  
  minutesNotEqual <- sqldf(paste("select wed_ID, plg_name, wed_ThuisPloeg, wed_UitPloeg, Minuten, opp_Minuten",
                                 "from sts ",
                                 "where Minuten <> opp_Minuten"))
  
  nrGamesWithUnEqualMinutes <- (nrow(minutesNotEqual) / 2)
  if(nrGamesWithUnEqualMinutes > 0) {
    wrn <- sprintf("%i game(s) with unequal minutes per team:", nrGamesWithUnEqualMinutes)
    warning(wrn)
    #uncomment next line for inspection:
    #print(minutesNotEqual)
  }
  
  # Although in every competition there is a certain number of games
  # where there clearly is an administrative error in the minutes played,
  # I choose not to correct for this at the moment.
  # I found two type of minutes played errors; I'll describe both:
  #
  # Ad.1 - 2011-12, Aris-Weert:
  # wed_ID               plg_Name  Minuten opp_Minuten
  # 557264 Basketball Stars Weert      197         200
  # 
  # Here, Weet plays a total of 197 minutes against 200 opp minutes;
  # I assume, because Weert finished the game with 4 or even fewer players.
  # No correction required
  #
  # Ad.2 - 2011-12, Aris-GasTerra
  # wed_ID               plg_Name  Minuten opp_Minuten
  # 557288                BV Aris     173         227
  # 
  # Here it appears as if 27 minutes of Aris were accidentally accounted to Aris.
  # However unless we investigate this further, we can't really reconstruct what
  # happened, or how we should fix this.
  # Maybe GT number 9 player was mixed up with Aris #9? How should we fix this?
  # We can not _systematically_ find the error by simply looking at the data,
  # so fairest seems to be to reditribute the minutes among all player according
  # to the current minutes played ratio. But if we do this, the estimation 
  # parameter (player minutes / team minutes) will not change.
  # and if we keep it unchanged, the accounted error will only be applied to 
  # the players involved in error - unlike the situation where we change 
  # everybody's minutes: then we can _be sure_ everybody will have an error!
}

CalcualteTeamTotals <- function(teamStats) {
  teamTotals <- ddply(regseasTeam,~plg_Name,summarise,
                      W=sum(Win),L=sum(Loss),
                      pts=sum(pts), opp_pts=sum(opp_pts),
                      avgps=sum(avgps),
                      FG2M=sum(FG2M),FG3M=sum(FG3M),FG2A=sum(FG2A),FG3A=sum(FG3A),
                      TO=sum(TO),OR=sum(OR),DR=sum(DR),                                            
                      FTM=sum(FTM),FTA=sum(FTA),                      
                      opp_FG2M=sum(opp_FG2M),opp_FG3M=sum(opp_FG3M),
                      opp_FG2A=sum(opp_FG2A),opp_FG3A=sum(opp_FG3A),
                      opp_TO=sum(opp_TO),opp_OR=sum(OR),opp_DR=sum(opp_DR),
                      opp_FTM=sum(opp_FTM),opp_FTA=sum(opp_FTA)
  )
  
  teamTotals <- AppendRatings(teamTotals)
  
  teamTotals <- AppendOwnFourFactors(teamTotals)

  teamTotals <- AppendOpponentFourFactors(teamTotals)
    
  return(teamTotals)
}


