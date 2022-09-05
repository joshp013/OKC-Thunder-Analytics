thunderdata<-read.csv("~/Downloads/shots_data.csv",header=T)
# Subset into team A and team B
teamA<-subset(thunderdata,thunderdata$team=="Team A")
teamB<-subset(thunderdata,thunderdata$team=="Team B")

# Doing team A data analytics first
# Subset the team A corner 2PT
teamA_2PTC<-teamA[(abs(teamA$x)<=22)&(teamA$y<=7.8),]
# Subset the team A non corner 2PT
teamA_2PTNC<-teamA[(abs(teamA$y)>7.8)&(teamA$x^2+teamA$y^2<=23.75^2),]
# Subset the team A corner 3PT
teamA_C3PT<-teamA[(abs(teamA$x)>22)&(teamA$y<=7.8),]
# Subset the team A noncorner 3PT
teamA_NC3PT<-teamA[(abs(teamA$y)>7.8)&(teamA$x^2+teamA$y^2>23.75^2),]
# Calculating the statistics
# Shot distribution
# 2PT percentage
teamA_2PT_percentage<-(nrow(teamA_2PTC)+nrow(teamA_2PTNC))/nrow(teamA)
teamA_2PT_percentage
# 2Pt eFG
teamA_2PT_eFG<-(sum(teamA_2PTC$fgmade)+sum(teamA_2PTNC$fgmade))/(nrow(teamA_2PTC)+nrow(teamA_2PTNC))
teamA_2PT_eFG
# Corner 3PT percentage
teamA_C3PT_percentage<-nrow(teamA_C3PT)/nrow(teamA)
teamA_C3PT_percentage
# Corner 3PT eFG
teamA_C3PT_eFG<-(sum(teamA_C3PT$fgmade)+0.5*sum(teamA_C3PT$fgmade))/nrow(teamA_C3PT)
teamA_C3PT_eFG
# Noncorner 3PT percentage
teamA_NC3PT_percentage<-nrow(teamA_NC3PT)/nrow(teamA)
teamA_NC3PT_percentage
# Noncorner 3PT eFG
teamA_NC3PT_eFG<-(sum(teamA_NC3PT$fgmade)+0.5*sum(teamA_NC3PT$fgmade))/nrow(teamA_NC3PT)
teamA_NC3PT_eFG

# Doing team B data analytics 
# Subset the team B corner 2PT
teamB_2PTC<-teamB[(abs(teamB$x)<=22)&(teamB$y<=7.8),]
# Subset the team B non corner 2PT
teamB_2PTNC<-teamB[(abs(teamB$y)>7.8)&(teamB$x^2+teamB$y^2<=23.75^2),]
# Subset the team B corner 3PT
teamB_C3PT<-teamB[(abs(teamB$x)>22)&(teamB$y<=7.8),]
# Subset the team B noncorner 3PT
teamB_NC3PT<-teamB[(abs(teamB$y)>7.8)&(teamB$x^2+teamB$y^2>23.75^2),]
# Calculating the statistics
# Shot distribution
# 2PT percentage
teamB_2PT_percentage<-(nrow(teamB_2PTC)+nrow(teamB_2PTNC))/nrow(teamB)
teamB_2PT_percentage
# 2Pt eFG
teamB_2PT_eFG<-(sum(teamB_2PTC$fgmade)+sum(teamB_2PTNC$fgmade))/(nrow(teamB_2PTC)+nrow(teamB_2PTNC))
teamB_2PT_eFG
# Corner 3PT percentage
teamB_C3PT_percentage<-nrow(teamB_C3PT)/nrow(teamB)
teamB_C3PT_percentage
# Corner 3PT eFG
teamB_C3PT_eFG<-(sum(teamB_C3PT$fgmade)+0.5*sum(teamB_C3PT$fgmade))/nrow(teamB_C3PT)
teamB_C3PT_eFG
# Noncorner 3PT percentage
teamB_NC3PT_percentage<-nrow(teamB_NC3PT)/nrow(teamB)
teamB_NC3PT_percentage
# Noncorner 3PT eFG
teamB_NC3PT_eFG<-(sum(teamB_NC3PT$fgmade)+0.5*sum(teamB_NC3PT$fgmade))/nrow(teamB_NC3PT)
teamB_NC3PT_eFG

