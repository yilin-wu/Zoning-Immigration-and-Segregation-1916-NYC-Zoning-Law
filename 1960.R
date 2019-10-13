setwd("~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data-NHGIS")
e<-read.csv('nhgis0009_ds92_1960_tract.csv')
e<-e[e$COUNTY %in% c('Bronx','Kings','New York','Queens','Richmond'),]
e<-e[e$STATE=='New York',]
tract1960$Rent20<-e$CAV001
tract1960$Rent20.29<-e$CAV002
tract1960$Rent30.39<-e$CAV003
tract1960$Rent40.49<-e$CAV004
tract1960$Rent50.59<-e$CAV005
tract1960$Rent60.69<-e$CAV006
tract1960$Rent70.79<-e$CAV007
tract1960$Rent80.89<-e$CAV008
tract1960$Rent90.99<-e$CAV009
tract1960$Rent100.119<-e$CAV010
tract1960$Rent120.149<-e$CAV011
tract1960$Rent150<-e$CAV012
tract1960$FrWhite<-e$B8J001

tract1960$HV_5000<-e$CAO001
tract1960$HV5000.7499<-e$CA0002
tract1960$HV7500.9999<-e$CAO003
tract1960$HV10000.12499<-e$CAO004
tract1960$HV12500.14999<-e$CAO005
tract1960$HV15000.17499<-e$CAO006
tract1960$HV17500.19999<-e$CAO007
tract1960$HV20000.24999<-e$CAO008
tract1960$HV25000.34999<-e$CAO009
tract1960$HV35000_<-e$CAO010