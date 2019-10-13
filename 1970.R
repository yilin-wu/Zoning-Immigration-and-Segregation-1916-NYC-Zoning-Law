setwd("~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data-NHGIS/nhgis1970_csv")
f1<-read_csv('nhgis0010_ds95_1970_tract.csv')
f2<-read_csv('nhgis0010_ds96_1970_tract.csv')
f3<-read_csv('nhgis0010_ds97_1970_tract.csv')
f4<-read_csv('nhgis0010_ds98_1970_tract.csv')
f5<-read_csv('nhgis0010_ds99_1970_tract.csv')
f1<-f1[f1$STATE=='New York',]
f1<-f1[f1$COUNTY %in% c("New York","Kings","Queens","Bronx","Richmond"),]
f2<-f2[f2$STATE=='New York',]
f2<-f2[f2$COUNTY %in% c("New York","Kings","Queens","Bronx","Richmond"),]
f3<-f3[f3$STATE=='New York',]
f3<-f3[f3$COUNTY %in% c("New York","Kings","Queens","Bronx","Richmond"),]
f4<-f4[f4$STATE=='New York',]
f4<-f4[f4$COUNTY %in% c("New York","Kings","Queens","Bronx","Richmond"),]
f5<-f5[f5$STATE=='New York',]
f5<-f5[f5$COUNTY %in% c("New York","Kings","Queens","Bronx","Richmond"),]
f<-merge(f1,f2,by="GISJOIN")
f<-merge(f,f3,by="GISJOIN")
f<-merge(f,f4,by="GISJOIN")
f<-merge(f,f5,by="GISJOIN",all=T)
rm(f1,f2,f3,f4,f5)

tract1970$FrWhite<-f$C0Z002
tract1970$TotPop<-f$
tract1970$AgRent<-f$CMB001
tract1970$RentRp<-f$CLY001
tract1970$Agvalue<-f$CLO001
tract1970$ValueRp<-f$CLU001

tract1970$HV5000<-f$CLT001
tract1970$HV5000.9999<-f$CLT002
tract1970$HV10000.14999<-f$CLT003
tract1970$HV15000.19999<-f$CLT004
tract1970$HV20000.24999<-f$CLT005
tract1970$HV25000.34999<-f$CLT006
tract1970$HV35000.49999<-f$CLT007
tract1970$HV50000<-f$CLT008



