#1950
setwd("~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data-NHGIS")
d<-read.csv('nhgis0008_ds82_1950_tract.csv')
d<-d[d$COUNTY %in% c('Bronx','Kings','New York','Queens','Richmond'),]
d<-d[d$STATE=='New York',]

tract1950$HV3000<-d$B08001
tract1950$HV3000.3999<-d$B08002
tract1950$HV4000.4999<-d$B08003
tract1950$HV5000.7499<-d$B08004
tract1950$HV7500.9999<-d$B08005
tract1950$HV10000.14999<-d$B08006
tract1950$HV15000<-d$B08007
tract1950$Notinlab<-d$B0N002+d$B0N004
tract1950$Employed<-d$B0P001+d$B0P003
tract1950$Unemployed<-d$B0P002+d$B0P004
tract1950$FrWhite<-d$B1K001