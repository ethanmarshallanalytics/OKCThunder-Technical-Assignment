# OKC THunder Project

shots = read.csv(choose.files(), header = T) # File Name 'shots_data'
attach(shots)
shots$z =  sqrt(x^2 + y^2) # Created a new variable for pythagrean theorem z = sqrt(x^2 + y^2)
corner3 = subset(shots, abs(x)>22 & abs(y)<=7.8) # Corner 3 Subset
corner3MADEa = subset(corner3, fgmade == 1 & team == 'Team A')
corner3MISSa = subset(corner3, fgmade == 0 & team == 'Team A')
corner3MADEb = subset(corner3, fgmade == 1 & team == 'Team B')
corner3MISSb = subset(corner3, fgmade == 0 & team == 'Team B')

shotDistributionA = nrow(corner3MADEa)/nrow(corner3MISSa)
shotDistributionA ## Team A made 66.67% of their corner 3s
shotDistributionB = nrow(corner3MADEb)/nrow(corner3MISSb) 
shotDistributionB ## Team B made 31.25% of their corner 3s

nc3 = subset(shots, y>7.8 & z>23.75) # Non-Corner 3 Subset
nc3MADEa = subset(nc3, fgmade == 1 & team == 'Team A')
nc3MISSa = subset(nc3, fgmade == 0 & team == 'Team A')
nc3MADEb = subset(nc3, fgmade == 1 & team == 'Team B')
nc3MISSb = subset(nc3, fgmade == 0 & team == 'Team B')

shotDistributionAnc3 = nrow(nc3MADEa)/nrow(nc3MISSa)
shotDistributionAnc3 ## Team A made 47.54% of their non-corner 3s
shotDistributionBnc3 = nrow(nc3MADEb)/nrow(nc3MISSb) 
shotDistributionBnc3 ## Team B made 57.37% of their non-corner 3s

twoPoint = subset(shots, z<23.75&abs(x)<22) # Two Point Subset
twoPointMADEa = subset(twoPoint, fgmade == 1 & team == 'Team A')
twoPointMISSa = subset(twoPoint, fgmade == 0 & team == 'Team A')
twoPointMADEb = subset(twoPoint, fgmade == 1 & team == 'Team B')
twoPointMISSb = subset(twoPoint, fgmade == 0 & team == 'Team B')

shotDistributionAtwoPointa = nrow(twoPointMADEa)/nrow(twoPointMISSa)
shotDistributionAtwoPointa ## Team A made 66.67% of their two pointers
shotDistributionAtwoPointb = nrow(twoPointMADEb)/nrow(twoPointMISSb) 
shotDistributionAtwoPointb ## Team B made 85.23% of their two pointers

############ Effective Field Goal Percentages Team A ############
corner3a = subset(corner3, team == 'Team A')
nc3a = subset(nc3, team == 'Team A')
twoPointa = subset(twoPoint, team == 'Team A')

eFGCorner3a = ((nrow(corner3MADEa) - (.5*nrow(corner3MADEa))) / nrow(corner3a)) 
eFGCorner3a ## Team A had an eFG% of 20% in the Corner 3 Zone
eFGnc3a = ((nrow(nc3MADEa) - (.5*nrow(nc3MADEa))) / nrow(nc3a)) 
eFGnc3a ## Team A had an eFG% of 16.11% in the Non-Corner 3 Zone
eFGtwoPointa = (nrow(twoPointMADEa) / nrow(twoPointa)) 
eFGtwoPointa ## Team A had an eFG% of 40% in the Two Point Zone

########### Effective Field Goal Percentages Team B ############
corner3b = subset(corner3, team == 'Team B')
nc3b = subset(nc3, team == 'Team B')
twoPointb = subset(twoPoint, team == 'Team B')

eFGCorner3b = ((nrow(corner3MADEb) - (.5*nrow(corner3MADEb))) / nrow(corner3b)) 
eFGCorner3b ## Team A had an eFG% of 11.90% in the Corner 3 Zone
eFGnc3b = ((nrow(nc3MADEb) - (.5*nrow(nc3MADEb))) / nrow(nc3b)) 
eFGnc3b ## Team A had an eFG% of 18.23% in the Non-Corner 3 Zone
eFGtwoPointb = (nrow(twoPointMADEb) / nrow(twoPointb)) 
eFGtwoPointb ## Team A had an eFG% of 46.01% in the Two Point Zone






