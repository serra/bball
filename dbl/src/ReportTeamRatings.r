library(ggplot2)
library(reshape2)
library(lattice)
library(gplots)

# assumes that the teamStats data frame is initialized
# this is all plotting; no calculations are done

######################################################################
#
# Utility functions
#
######################################################################

PageWithTrendAndBoxPlot <- function (df, title, medianForComp, yLim) {
  message(sprintf("PageWithTrendAndBoxPlot '%s'... ", title))
  
  p <- ggplot(df, aes(x=game, y=value)) +
    opts(title=title)  +
    geom_hline(yintercept=medianForComp, linetype="dotted") +
    ylim(yLim)
  
  ptrend <- p +
    #stat_smooth(aes(fill = variable, colour=variable), size=1) +
    geom_point(aes(shape=opponent, colour=variable)) + 
    scale_shape_manual(values=as.numeric(df$opponent)) 
   
  pboxplot <- p + 
    geom_boxplot(aes(x=variable, fill=variable))
  
  
  grid.newpage()
  pushViewport(viewport(layout = grid.layout(1, 4)))   
  print(ptrend, vp = viewport(layout.pos.row = 1, layout.pos.col = 1:3))         
  print(pboxplot, vp = viewport(layout.pos.row = 1, layout.pos.col = 4))
  message("Done.")
}

######################################################################
#
# Plot functions
#
######################################################################

OrtgByTeamPlot <- function (teamStats) {
  plt <- ggplot(teamStats, aes(plg_Name, Ortg)) + 
    geom_boxplot(aes(fill=plg_Name)) +
    geom_hline(aes(yintercept=median(Ortg)), linetype="dotted") +
    theme(axis.text.x = element_text(angle = -45, hjust = 0)) +    
    labs(title ="Offensive Rating") +
    xlab("") + 
    ylab("Points per 100 possessions")
  return(plt)
}   

drtgByTeamPlot <- function(teamStats) {
  return(ggplot(teamStats, aes(plg_Name, Drtg)) + 
           geom_boxplot(aes(fill=plg_Name)) +
           geom_hline(aes(yintercept=median(Drtg)), linetype="dotted") +
           theme(axis.text.x = element_text(angle = -45, hjust = 0)) +    
           labs(title ="Defensive Rating by Team") +
           xlab("") + 
           ylab("Points per 100 possessions"))
}

nrtgByTeamPlot <- function(teamStats) {
  return( ggplot(teamStats, aes(plg_Name, Nrtg)) + 
            geom_boxplot(aes(fill=plg_Name)) +
            geom_hline(aes(yintercept=median(Nrtg)), linetype="dotted") +
            theme(axis.text.x = element_text(angle = -45, hjust = 0)) +    
            labs(title ="Net Rating by Team") +
            xlab("") + 
            ylab("Points Difference per 100 possessions"))
}

fourFactorsDf <- function(teamStats) {
  d = data.frame(teamStats$Nrtg, 
                 teamStats$EFGpct, teamStats$ORpct, 
                 teamStats$TOpct, teamStats$FTTpct
                 # when evaluating the competion, 
                 # it does not make sense to include opponent stats
                 #teamStats$opp_EFGpct, teamStats$opp_ORpct, 
                 #teamStats$opp_TOpct, teamStats$opp_FTTpct
  )
  names(d) <- sub("^teamStats.", "", names(d))
  return(d)
}

fourFactorsForCompetition <- function(teamStats) {
  d <- fourFactorsDf(teamStats)
  
  forPlot <- teamStats[c("wed_ID","Nrtg","EFGpct","ORpct","TOpct","FTTpct",
                         "plg_Name","Home")] 
  forPlot.m <- melt(forPlot, id=c("wed_ID", "plg_Name", "Home","Nrtg"))
  
  p <- ggplot(forPlot.m, aes(value, Nrtg)) +
    geom_point(alpha=0.4) + 
    stat_smooth(method="lm") +
    facet_wrap(~variable,scales="free")
  
  return(p)
}

fourFactorsForCompetitionCorrelationMatrix <- function(teamStats) {
    d <- fourFactorsDf(teamStats)
    return(cor(d))
}

TeamRatingQuadrantPlot <- function (teamStats) {
  
  agg <- aggregate(cbind(Ortg, Drtg, Nrtg) ~ plg_Name,
                   dat = teamStats, 
                   FUN = mean)
  
  moff <- mean(teamStats$Ortg)
  mdef <- mean(teamStats$Drtg)
  
  plt <- ggplot(agg, aes(x=Ortg, y=Drtg)) + 
    geom_point(aes(colour = factor(plg_Name), size = Nrtg)) +
    geom_abline(intercept = 0, slope = 1, linetype="dotted") +   
    labs(title ="Team Ratings") +
    geom_text(aes(label=plg_Name), vjust=2, size=3, alpha = I(0.6)) +
    xlab("Ortg (Points per 100 possessions)") + 
    ylab("Drtg (Points allowed per 100 possessions)") +
    xlim(80,120) + 
    ylim(80,120)
  return(plt)
}   

ptsDiffByTeamPlot <- function (teamStats) {
  return(ggplot(teamStats, aes(plg_ShortName, (pts-opp_pts))) + 
           geom_boxplot(aes(fill=plg_ShortName)) +
           theme(axis.text.x = element_text(angle = -45, hjust = 0)) +            
           geom_hline(aes(yintercept=0), linetype="dotted") +
           geom_hline(aes(yintercept=-6), linetype="dotted") +
           geom_hline(aes(yintercept=6), linetype="dotted") +
           labs(title ="Points Difference") +
           xlab("") + 
           ylab("Points"))
}

paceByTeamPlot <- function(teamStats) {
  return(allTeamsBoxPlot(teamStats, "pace") +
    geom_hline(aes(yintercept=median(pace)), linetype="dotted") +
    labs(title ="Game Pace") +
    ylab("#Possessions per 40 minutes"))
}

toPctPlot <- function(teamStats, opponent=FALSE) { 
  return(allTeamsBoxPlot(teamStats, "TOpct", opponent) +  
           geom_hline(aes(yintercept=median(TOpct)), linetype="dotted") +          
           labs(title ="Turnovers per Possession") +
           ylab("TO ratio"))
}

fttPctPlot <- function(teamStats, opponent=FALSE) {
  return(allTeamsBoxPlot(teamStats, "FTTpct", opponent) + 
           geom_boxplot(aes(fill=plg_Name)) +
           geom_hline(aes(yintercept=median(FTTpct)), linetype="dotted") +
           labs(title ="Free Throw Trips per Shooting Possession") +
           theme(axis.text.x = element_text(angle = -45, hjust = 0)) + 
           ylab("FTT%"))
}

orPctPlot <- function(teamStats, opponent=FALSE){
  return(allTeamsBoxPlot(teamStats, "ORpct", opponent) + 
           geom_hline(aes(yintercept=median(ORpct)), linetype="dotted") +
           labs(title ="Offensive Rebound % (OR%)") +
           ylab("OR%")   )
}

efgPctPlot <- function(teamStats, opponent=FALSE) {
  return(allTeamsBoxPlot(teamStats, "EFGpct", opponent) +
           geom_hline(aes(yintercept=median(EFGpct)), linetype="dotted") +
           labs(title ="Effective Field Goal % (EFG%)") +
           ylab("EFG%"))
} 

allTeamsBoxPlot <- function(teamStats, field, opponent=FALSE) {
  if(opponent) { field <- paste("opp_", field, sep="") }
  aest <- aes_string(x = "plg_Name", y = field)
  return(ggplot(teamStats, aest) + 
           geom_boxplot(aes(fill=plg_Name)) +
           theme(axis.text.x = element_text(angle = -45, hjust = 0)) + 
           xlab("")
  )
}

######################################################################
#
# Output functions
#
######################################################################

PrintTeamRatings <- function(teamStats, outputFile) {
  message("Creating team rating output file ...")
  
  teams <- sqldf(paste("select plg_ID, plg_Name, plg_ShortName from teamStats",
                       "group by plg_ID, plg_Name, plg_ShortName"))
  nrTeams <- nrow(teams)
  
  message(sprintf("Found %i teams in the team rating data set ...",nrow(teams)))
  print(teams)
  
  pdf(outputFile, paper="a4r", width=12)
  
  # Offensive and Defensive Ratings - Competition
  print(OrtgByTeamPlot(teamStats))

  print(drtgByTeamPlot(teamStats))

  print(nrtgByTeamPlot(teamStats))
  
  ptsByTeamPlot <- ggplot(teamStats, aes(plg_ShortName, pts)) + 
    geom_boxplot(aes(fill=plg_ShortName)) +
    geom_hline(aes(yintercept=median(pts)), linetype="dotted") +
    opts(title ="Points") +
    xlab("") + 
    ylab("Points")    
  print(ptsByTeamPlot)
  
  ptsAllowedByTeamPlot <- ggplot(teamStats, aes(plg_ShortName, opp_pts)) + 
    geom_boxplot(aes(fill=plg_ShortName)) +
    geom_hline(aes(yintercept=median(opp_pts)), linetype="dotted") +
    opts(title ="Points Allowed") +
    xlab("") + 
    ylab("Points")    
  print(ptsAllowedByTeamPlot)
                              
  print(ptsDiffByTeamPlot(teamStats))
  
  print(paceByTeamPlot(teamStats))
  
  # Performance Indicators - Competition
  
  print(efgPctPlot(teamStats))

  print(orPctPlot(teamStats))

  print(toPctPlot(teamStats))

  print(fttPctPlot(fttPctPlot(teamStats)))
    
  
  
  message("Offensive and Defensive Ratings - by team ...")
  
  medianRatingCompetion <- median(teamStats$Ortg)
  yLim <- c(60, 170)
  
  for(i in 1:nrTeams){
    plgID <- teams[i,1]
    plgName <- teams[i,2]
    message(sprintf("processing %s (%i of %i) ...",plgName,i,nrTeams))
    forPlot <- teamStats[which(teamStats$plg_ID==plgID),]

    forPlot <- forPlot[c("Drtg","Ortg","opp_plg_ShortName","Home")] 
    forPlot$game = c(1:length(forPlot$Ortg))
    forPlot <- rename.vars(forPlot, c("opp_plg_ShortName"), c("opponent"))
    
    forPlot.m <- melt(forPlot, id=c("game", "opponent", "Home"))
      
    PageWithTrendAndBoxPlot(forPlot.m, plgName, medianRatingCompetion, yLim)
    
    message(sprintf("processed %s (%i of %i)",plgName,i,nrTeams))
  }  
  
  message("battle of ratio's per team ...")
  
#   for(i in 1:nrTeams){
#     plgID <- teams[i,1]
#     plgName <- teams[i,2]
#     forPlot <- teamStats[which(teamStats$plg_ID==plgID),]
#     d = data.frame(forPlot$Nrtg, forPlot$Ortg, forPlot$Drtg,
#                    forPlot$EFGpct, forPlot$ORpct, 
#                    forPlot$TOpct, forPlot$FTTpct,
#                    forPlot$opp_EFGpct, forPlot$opp_ORpct, 
#                    forPlot$opp_TOpct, forPlot$opp_FTTpct
#                    )
#     names(d) <- sub("^forPlot.", "", names(d))
#     corTeam = cor(d)
#     
#     p <- levelplot(corTeam, main=paste("Performance correlation matrix for ",plgName), 
#                    panel=function(...) {
#                     arg <- list(...)
#                     panel.levelplot(...)
#                     panel.text(arg$x, arg$y, round(arg$z,2))})
#     
#     print(p)
#   }
  
  message("Ratio Details by team ...")
  
  yLim <- c(0, 0.8)
  
  for(i in 1:nrTeams){
    plgID <- teams[i,1]
    plgName <- teams[i,2]
    forPlot <- teamStats[which(teamStats$plg_ID==plgID),]
      
    forPlot <- forPlot[c("opp_plg_ShortName","Home",
                         "EFGpct","ORpct","TOpct","FTTpct",
                         "opp_EFGpct","opp_ORpct","opp_TOpct","opp_FTTpct")] 
    forPlot$game = c(1:length(forPlot$EFGpct))
    forPlot <- rename.vars(forPlot, c("opp_plg_ShortName"), c("opponent"))
    
    PageWithTrendAndBoxPlot(melt(forPlot, measure=c("EFGpct", "opp_EFGpct")), 
                            plgName, median(teamStats$EFGpct), yLim)
    PageWithTrendAndBoxPlot(melt(forPlot, measure=c("ORpct", "opp_ORpct")), 
                            plgName, median(teamStats$ORpct), yLim)
    PageWithTrendAndBoxPlot(melt(forPlot, measure=c("TOpct", "opp_TOpct")), 
                            plgName, median(teamStats$TOpct), yLim)
    PageWithTrendAndBoxPlot(melt(forPlot, measure=c("FTTpct", "opp_FTTpct")), 
                            plgName, median(teamStats$FTTpct), yLim)
  
  #   forCor <- data.frame(forPlot$Nrtg, forPlot$EFGpct,
  #                        forPlot$ORpct, forPlot$TOpct, 
  #                        forPlot$FTTpct)
  #   forCorOpp <- data.frame(forPlot$Nrtg, forPlot$opp_EFGpct,
  #                           forPlot$opp_ORpct, forPlot$opp_TOpct, 
  #                           forPlot$opp_FTTpct)
    
  }
  
  message("Shooting plays (2/3/FT) ...")
  
  layout(matrix(c(1,2,3,4,5,2,3,4), 2, 4, byrow=TRUE), widths=c(5,1,1,1))
  
  yLim <- c(0, 60)
  
  for(i in 1:nrTeams){
    plgID <- teams[i,1]
    plgName <- teams[i,2]
    forPlot <- teamStats[which(teamStats$plg_ID==plgID),]
    gameNrs <- c(1:nrow(forPlot))
    
    # absolute
    plot(gameNrs, forPlot$FG2A, 
         type="o", pch=1, lty=1, col="blue", 
         xlab=plgName, ylab="#Shots",
         ylim=yLim)
    lines(gameNrs, forPlot$FG3A, 
          type="o", pch=1, lty=1, col="purple", 
          xlab=plgName, 
          ylim=yLim)
    lines(gameNrs, forPlot$FTtrip, 
          type="o", pch=1, lty=1, col="red", 
          xlab=plgName, 
          ylim=yLim)
    
    abline(h=mean(forPlot$FG2A), lty=3, col="blue")
    abline(h=mean(forPlot$FG3A), lty=3, col="purple")
    abline(h=mean(forPlot$FTtrip), lty=3, col="red")
    
    boxplot((forPlot$FG2Apct), data=forPlot, 
            xlab="FG2A", col="blue", 
            ylim=c(0.0, 1.0) )
    abline(h=median(teamStats$FG2Apct), lty=3)
    
    boxplot(forPlot$FG3Apct, data=forPlot, 
            xlab="3FGA", col="purple",
            ylim=c(0.0, 1.0) )
    abline(h=median(teamStats$FG3Apct), lty=3)
    
    boxplot(forPlot$FTTpct, data=forPlot, 
            xlab="FT trips", col="red",
            ylim=c(0.0, 1.0) )
    abline(h=median(teamStats$FTTpct), lty=3)
    
    # relative
    plot(gameNrs, forPlot$FG2Apct, 
         type="o", pch=1, lty=1, col="blue", 
         xlab=plgName, ylab="Shot Selection Ratio",
         ylim=c(0.0, 1.0))
    lines(gameNrs, forPlot$FG3Apct, 
          type="o", pch=1, lty=1, col="purple", 
          xlab=plgName, 
          ylim=c(0.0, 1.0))
    lines(gameNrs, forPlot$FTTpct, 
          type="o", pch=1, lty=1, col="red", 
          xlab=plgName, 
          ylim=c(0.0, 1.0))
    
  #   # create a bar plot using ggplot   
  #   fields <- c("FGA", "FG3A", "FTtrips", "TO")
  #   plays <- forPlot[fields]
  #   plays["gameNrs"] <- gameNrs
  #   meltedPlays <- melt(plays, id=c('gameNrs'))
  #   qplot(factor(gameNrs), data=meltedPlays, 
  #         geom="bar", fill=variable, weight=value)
    
  }
  
  dev.off()
  
  
  
  # print some table to screen
  
  ratingTable <- sprintf("\n\n %-30s %5s %5s %5s %5s %5s \n", 
                         "Team",
                         "pts",
                         "opp",
                         "Ortg",
                         "Drtg",
                         "Nrtg")
  
  for(i in 1:nrTeams){
    plgID <- teams[i,1]
    plgName <- teams[i,2]
    forPlot <- teamStats[which(teamStats$plg_ID==plgID),]
    gameNrs = c(1:nrow(forPlot))
    
    row <- sprintf("%-30s %5.1f %5.1f %5.1f %5.1f %5.1f \n", 
                   plgName,
                   mean(forPlot$pts),
                   mean(forPlot$opp_pts),
                   mean(forPlot$Ortg),
                   mean(forPlot$Drtg),
                   mean(forPlot$Nrtg))
    ratingTable <- paste (ratingTable, row)
  }
  
  cat(ratingTable)
}                   