setwd("~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data-NHGIS/nhgis1980_csv")
c1<-read_csv('nhgis0011_ds104_1980_tract.csv')
c2<-read_csv('nhgis0011_ds107_1980_tract.csv')
c3<-read_csv('nhgis0011_ds116_1980_tract.csv')
c4<-read_csv('nhgis0011_ds117_1980_tract.csv')
c<-merge(c1,c2,by="GISJOIN",no.dups=T)
c<-merge(c,c3,by="GISJOIN",no.dups=T)
c<-merge(c,c4,by="GISJOIN",no.dups=T)
rm(c1,c2,c3,c4)
c<-c[c$COUNTY.x %in% c('Bronx','Kings','New York','Queens','Richmond'),]
c<-c[c$STATE.x=='New York',]



tract1980<-c[,1:10]
tract1980$Totpop<-c$DZ2001
tract1980$Black<-c$C6X002
tract1980$Tothouse<-c$DZ3001
tract1980$Rentero<-c$C7W002
tract1980$Ownero<-c$C7W001
tract1980$Vacant<-c$C9B002
tract1980$Immig<-c$DG6004
tract1980$MedianValue<-c$C8J001
tract1980$MedianRent<-c$C8O001

tract1980$HV10000<-c$C8I001
tract1980$HV10000.14999<-c$C8I002
tract1980$HV15000.19999<-c$C8I003
tract1980$HV20000.24999<-c$C8I004
tract1980$HV25000.29999<-c$C8I005
tract1980$HV30000.34999<-c$C8I006
tract1980$HV35000.39999<-c$C8I007
tract1980$HV40000.49999<-c$C8I008
tract1980$HV50000.79999<-c$C8I009
tract1980$HV80000.99999<-c$C8I010
tract1980$HV100000.149999<-c$C8I011
tract1980$HV150000.199999<-c$C8I012
tract1980$HV200000<-c$C8I013


tract1980$Rent50<-c$C8N001
tract1980$Rent50.99<-c$C8N002
tract1980$Rent100.119<-c$C8N003
tract1980$Rent120.139<-c$C8N004
tract1980$Rent140.149<-c$C8N005
tract1980$Rent150.159<-c$C8N006
tract1980$Rent160.169<-c$C8N007
tract1980$Rent170.199<-c$C8N008
tract1980$Rent200.249<-c$C8N009
tract1980$Rent250.299<-c$C8N010
tract1980$Rent300.399<-c$C8N011
tract1980$Rent400.499<-c$C8N012
tract1980$Rent500<-c$C8N013

tract1980$MDFI<-c$DIL001
tract1980$FI_2500<-c$DIK001
tract1980$FI2500_4999<-c$DIK002
tract1980$FI5000_7499<-c$DIK003
tract1980$FI7500_9999<-c$DIK004
tract1980$FI10000_12499<-c$DIK005
tract1980$FI12500_14999<-c$DIK006
tract1980$FI15000_17499<-c$DIK007
tract1980$FI17500_19999<-c$DIK008
tract1980$FI20000_22499<-c$DIK009
tract1980$FI22500_24999<-c$DIK010
tract1980$FI25000_27499<-c$DIK011
tract1980$FI27500_29999<-c$DIK012
tract1980$FI












