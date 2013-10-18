sts <- regseasPlyr

team <- "BV Aris"
cols <- colnames(sts)

sts <- sts[sts$plg_Name == team, cols]
sts <- na.omit(sts)

print(ScoringEfficiency(sts))
PlayMakers(sts)
