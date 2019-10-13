##For 1940 tract
setwd("~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data-NHGIS")
a<-read_csv('nhgis0007_ds76_1940_tract.csv')
a<-a[a$COUNTY %in% c('Bronx','Kings','New York','Queens','Richmond'),]

#tract1940

tract1940<-a[,1:10]
tract1940$TotPop<-a$BUB001
tract1940$Black<-a$BVG001
tract1940$Tothouse<-a$BU1001
tract1940$vacant<-a$BU4001+a$BU4002
tract1940$Rentero<-a$BU2002
tract1940$Ownero<-a$BU2001
tract1940$MedianValue<-a$BVC001
tract1940$MedianRent<-a$BVF001

tract1940$HV500<-a$BVB001
tract1940$HV500to699<-a$BVB002
tract1940$HV700.999<-a$BVB003
tract1940$HV1000.1499<-a$BVB004
tract1940$HV1500.1999<-a$BVB005
tract1940$HV2000.2499<-a$BVB006
tract1940$HV2500.2999<-a$BVB007
tract1940$HV3000.3999<-a$BVB008
tract1940$HV4000.4999<-a$BVB009
tract1940$HV5000.5999<-a$BVB010
tract1940$HV6000.7499<-a$BVB011
tract1940$HV7500.9999<-a$BVB012
tract1940$HV10000.14999<-a$BVB013
tract1940$HV15000.19999<-a$BVB014
tract1940$HV20000<-a$BVB015

tract1940$Rent5<-a$BVE001
tract1940$Rent5to6<-a$BVE002
tract1940$Rent7.9<-a$BVE003
tract1940$Rent10.14<-a$BVE004
tract1940$Rent15.19<-a$BVE005
tract1940$Rent20.24<-a$BVE006
tract1940$Rent25.29<-a$BVE007
tract1940$Rent30.39<-a$BVE008
tract1940$Rent40.49<-a$BVE009
tract1940$Rent50.59<-a$BVE010
tract1940$Rent60.74<-a$BVE011
tract1940$Rent75.99<-a$BVE012
tract1940$Rent100.149<-a$BVE013
tract1940$Rent150.199<-a$BVE014
tract1940$Rent200<-a$BVE015








