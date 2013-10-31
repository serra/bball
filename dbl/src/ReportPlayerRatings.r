ScoringEfficiency <- function (sts) {
  teamUsageMedian <- 0.2
  teamTSMedian <- median(sts$spl_PPP)

  agg <- aggregate(cbind(spl_Minuten, spl_PPP, spl_USGpct, spl_Finishes) ~ spl_ID,
                   dat = sts, 
                   FUN = median)
  
  plt <- ggplot(agg, aes(x=spl_USGpct, y=spl_PPP)) + 
    geom_point(aes(size = spl_Finishes, colour = spl_Minuten)) +  
      scale_colour_gradient(high="red") +
    geom_vline(xintercept=teamUsageMedian, linetype="dotted") +   
    geom_hline(yintercept=teamTSMedian, linetype="dotted") +   
    labs(title ="Points per play vs usage") +
    geom_text(aes(label=spl_ID), vjust=2, size=3, alpha = I(0.6)) +
    xlab("Usage") + 
    ylab("Points per play") 
  return(plt)
}  

PlayMakers <- function(sts) {
  #spl_Finishes, spl_Astpct, spl_PPP, spl_PTS, spl_USGpct, spl_PTS, spl_Ast
  aggAnotation <- aggregate(cbind(spl_Finishes, spl_Minuten) ~ spl_ID,
                   dat = sts, 
                   FUN = median)
  rownames(aggAnotation) <- aggAnotation$spl_ID
  
  agg <- aggregate(cbind(spl_Astpct, spl_USGpct, spl_PPP) ~ spl_ID,
                   dat = sts, 
                   FUN = median)
  rownames(agg) <- agg$spl_ID
  agg$spl_ID <- NULL

  View(agg)
  
  d <- dist(agg)
  fit <- cmdscale(d, eig=TRUE, k = 2)
  fitdf <- data.frame(x=fit$points[, 1], y=fit$points[, 2])
  lbls=row.names(fitdf)
  
  fitdf <- merge(fitdf, aggAnotation, by='row.names')
  View(fitdf)
  plt <- ggplot(fitdf, aes(x=x, y=y, label=spl_ID)) + 
    geom_point(aes(size=spl_Finishes,  colour = spl_Minuten)) +  
    scale_colour_gradient(high="red") +
    labs(title ="Playmaking similarities") +
    geom_text(vjust=2, size=3, alpha = I(0.6)) +
    xlab("Coordinate 1") + 
    ylab("Coordinate 1") 
  print(plt)
}
