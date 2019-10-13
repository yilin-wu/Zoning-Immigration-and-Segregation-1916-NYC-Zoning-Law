##Summary stat of Tract data
setwd("~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data In Use")
tract1970<-read.csv('Tract1970.csv')
tract1960<-read.csv("Tract1960.csv")
tract1950<-read.csv("Tract1950.csv")

#number of tracts
nrow(tract1950)
nrow(tract1960)

#Total Population
sum(tract1950$TotPop)
sum(tract1960$Totpop)

# Mean Tract Population
mean(tract1950$TotPop)
mean(tract1960$TotPop)
mean(tract1970$TotPop)

std<-function(x){sd(x,na.rm=T)/sqrt(length(x))}
se<-function(x){sqrt(var(x)/length(x))}
se(tract1950$TotPop)
se(tract1960$TotPop)
se(tract1970$TotPop)



#Black Pop
sum(tract1950$Black)
sum(tract1960$Black)

sum(tract1970$Black,na.rm=T)  # Note there are NA in black pop of 1970: (If select in QGIS: "GISJOIN" IN( 'G36000500081','G36004700455','G36004700852','G36006100297','G3600810107202')
which(is.na(tract1970$Black))
tract1970$GISJOIN[55]

#Mean Tract Black Pop
mean(tract1970$Black,na.rm=T)
std(tract1970$Black)

#Total Housing Units

sum(tract1970$Tothouse)


# Median Home Value in the tract

tract1940$MedianValue<-2.11*tract1940$MedianValue
mean(tract1940$MedianValue[tract1940$MedianValue!=0])
std(tract1940$MedianValue[tract1940$MedianValue!=0])
tract1950$MedianValue<-1.23*tract1950$MedianValue
mean(tract1950$MedianValue[tract1950$MedianValue!=0])
std(tract1950$MedianValue[tract1950$MedianValue!=0])


tract1970$meanvalue<-tract1970$Agvalue/tract1970$ValueRp
tract1970$meanvalue<-0.76*tract1970$meanvalue
mean(tract1970$meanvalue,na.rm=T)
std(tract1970$meanvalue)

tract1980$MedianValue<-0.36*tract1980$MedianValue
mean(tract1980$MedianValue[tract1980$MedianValue!=0])
std(tract1980$MedianValue[tract1980$MedianValue!=0])


#Median Contract Rent

tract1940$MedianRent<-2.11*tract1940$MedianRent
mean(tract1940$MedianRent[tract1940$MedianRent!=0])
std(tract1940$MedianRent)
tract1950$MedianRent<-1.23*tract1950$MedianRent
mean(tract1950$MedianRent[tract1950$MedianRent!=0]) #571 tracts median rents reported zero,only 162 tracts rent report is zero
std(tract1950$MedianRent[tract1950$MedianRent!=0])
tract1960$meanrent<-tract1960$AgRent/tract1960$RentRp
mean(tract1960$meanrent,na.rm=T)
std(tract1960$meanrent)

tract1970$meanrent<-tract1970$AgRent/tract1970$RentRp
tract1970$meanrent<-0.76*tract1970$meanrent
mean(tract1970$meanrent,na.rm=T)
std(tract1970$meanrent)

tract1980$MedianRent<-0.36*tract1980$MedianRent
mean(tract1980$MedianRent[tract1980$MedianRent!=0]) 
std(tract1980$MedianRent[tract1980$MedianRent!=0])


#median home value category
sum(tract1940$HV500)
sum(tract1940$HV500to699)
sum(tract1940$HV700.999)
sum(tract1940$HV1000.1499)
sum(tract1940$HV1500.1999)
sum(tract1940$HV2000.2499)
sum(tract1940$HV2500.2999)
sum(tract1940$HV3000.3999)
sum(tract1940$HV4000.4999)
sum(tract1940$HV5000.5999)
sum(tract1940$HV6000.7499)
sum(tract1940$HV7500.9999)
sum(tract1940$HV10000.14999)
sum(tract1940$HV15000.19999)
sum(tract1940$HV20000)

(sum(tract1940$HV500)+sum(tract1940$HV500to699)+sum(tract1940$HV700.999)+sum(tract1940$HV1000.1499)+sum(tract1940$HV1500.1999)+sum(tract1940$HV2000.2499)+sum(tract1940$HV2500.2999)+sum(tract1940$HV3000.3999)+sum(tract1940$HV4000.4999)+sum(tract1940$HV5000.5999)+sum(tract1940$HV6000.7499)+sum(tract1940$HV7500.9999)+sum(tract1940$HV10000.14999)+sum(tract1940$HV15000.19999)+sum(tract1940$HV20000))/2

sum(tract1950$HV3000)
sum(tract1950$HV3000.3999)
sum(tract1950$HV4000.4999)
sum(tract1950$HV5000.7499)
sum(tract1950$HV7500.9999)
sum(tract1950$HV10000.14999)
sum(tract1950$HV15000)

(sum(tract1950$HV3000)+sum(tract1950$HV3000.3999)+sum(tract1950$HV4000.4999)+sum(tract1950$HV5000.7499)+sum(tract1950$HV7500.9999)+sum(tract1950$HV10000.14999)+sum(tract1950$HV15000))/2

sum(tract1960$HV.5000)
sum(tract1960$HV5000.9999)
sum(tract1960$HV10000.14999)
sum(tract1960$HV15000.19999)
sum(tract1960$HV20000.24999)
sum(tract1960$HV.25000)

(sum(tract1960$HV.5000)+sum(tract1960$HV5000.9999)+sum(tract1960$HV10000.14999)+sum(tract1960$HV15000.19999)+sum(tract1960$HV20000.24999)+sum(tract1960$HV.25000))/2

sum(tract1970$HV5000[tract1970$HV5000>0])
sum(tract1970$HV5000.9999,na.rm = T)
sum(tract1970$HV10000.14999,na.rm=T)
sum(tract1970$HV15000.19999,na.rm=T)
sum(tract1970$HV20000.24999,na.rm=T)
sum(tract1970$HV25000.34999,na.rm=T)
sum(tract1970$HV35000.49999,na.rm=T)
sum(tract1970$HV50000,na.rm=T)

(sum(tract1970$HV5000[tract1970$HV5000>0])+sum(tract1970$HV5000.9999,na.rm = T)+sum(tract1970$HV10000.14999,na.rm=T)+sum(tract1970$HV15000.19999,na.rm=T)+sum(tract1970$HV20000.24999,na.rm=T)+sum(tract1970$HV25000.34999,na.rm=T)+sum(tract1970$HV35000.49999,na.rm=T)+sum(tract1970$HV50000,na.rm=T))/2
25000*0.76
34999*0.76


sum(tract1980$HV10000)
sum(tract1980$HV10000.14999)
sum(tract1980$HV15000.19999)
sum(tract1980$HV20000.24999)
sum(tract1980$HV25000.29999)
sum(tract1980$HV30000.34999)
sum(tract1980$HV35000.39999)
sum(tract1980$HV40000.49999)
sum(tract1980$HV50000.79999)
sum(tract1980$HV80000.99999)
sum(tract1980$HV100000.149999)
sum(tract1980$HV150000.199999)
sum(tract1980$HV200000)

(sum(tract1980$HV10000)+sum(tract1980$HV10000.14999)+sum(tract1980$HV15000.19999)+sum(tract1980$HV20000.24999)+sum(tract1980$HV25000.29999)+sum(tract1980$HV30000.34999)+sum(tract1980$HV35000.39999)+sum(tract1980$HV40000.49999)+sum(tract1980$HV50000.79999)+sum(tract1980$HV80000.99999)+sum(tract1980$HV100000.149999)+sum(tract1980$HV150000.199999)+sum(tract1980$HV200000))/2

50000*0.36
79999*0.36







#Median Rent

sum(tract1940$Rent5)
sum(tract1940$Rent5to6)
sum(tract1940$Rent7.9)
sum(tract1940$Rent10.14)
sum(tract1940$Rent15.19)
sum(tract1940$Rent20.24)
sum(tract1940$Rent25.29)
sum(tract1940$Rent30.39)
sum(tract1940$Rent40.49)
sum(tract1940$Rent50.59)
sum(tract1940$Rent60.74)
sum(tract1940$Rent75.99)
sum(tract1940$Rent100.149)
sum(tract1940$Rent150.199)
sum(tract1940$Rent200)


(sum(tract1940$Rent5to6)+sum(tract1940$Rent7.9)+sum(tract1940$Rent10.14)+sum(tract1940$Rent15.19)+sum(tract1940$Rent20.24)+sum(tract1940$Rent25.29)+sum(tract1940$Rent30.39)+sum(tract1940$Rent40.49)+sum(tract1940$Rent50.59)+sum(tract1940$Rent60.74)+sum(tract1940$Rent75.99)+sum(tract1940$Rent100.149)+sum(tract1940$Rent150.199)+sum(tract1940$Rent200))/2


sum(tract1950$Rent.10)
sum(tract1950$Rent10.19)
sum(tract1950$Rent20.29)
sum(tract1950$Rent30.39)
sum(tract1950$Rent40.49)
sum(tract1950$Rent50.59)
sum(tract1950$Rent60.69)
sum(tract1950$Rent70.99)
sum(tract1950$Rent100.)

(sum(tract1950$Rent.10)+sum(tract1950$Rent10.19)+sum(tract1950$Rent20.29)+sum(tract1950$Rent30.39)+sum(tract1950$Rent40.49)+sum(tract1950$Rent50.59)+sum(tract1950$Rent60.69)+sum(tract1950$Rent70.99)+sum(tract1950$Rent100.))/2

sum(tract1960$Rent20)
sum(tract1960$Rent20.29)
sum(tract1960$Rent30.39)
sum(tract1960$Rent40.49)
sum(tract1960$Rent50.59)
sum(tract1960$Rent60.69)
sum(tract1960$Rent70.79)
sum(tract1960$Rent80.89)
sum(tract1960$Rent90.99)
sum(tract1960$Rent100.119)
sum(tract1960$Rent120.149)
sum(tract1960$Rent150)


(sum(tract1960$Rent20)+sum(tract1960$Rent20.29)+sum(tract1960$Rent30.39)+sum(tract1960$Rent40.49)+sum(tract1960$Rent50.59)+sum(tract1960$Rent60.69)+sum(tract1960$Rent70.79)+sum(tract1960$Rent80.89)+sum(tract1960$Rent90.99)+sum(tract1960$Rent100.119)+sum(tract1960$Rent120.149)+sum(tract1960$Rent150))/2


sum(tract1970$`Rent<40`[tract1970$`Rent<40`>0])
sum(tract1970$`Rent40-59`,na.rm=T)
sum(tract1970$`Rent60-79`,na.rm=T)
sum(tract1970$`Rent80-99`,na.rm=T)
sum(tract1970$`Rent100-119`,na.rm=T)
sum(tract1970$`Rent120-149`,na.rm=T)
sum(tract1970$`Rent150-199`,na.rm=T)
sum(tract1970$`Rent>200`,na.rm=T)

(sum(tract1970$`Rent<40`[tract1970$`Rent<40`>0])+sum(tract1970$`Rent40-59`,na.rm=T)+sum(tract1970$`Rent60-79`,na.rm=T)+sum(tract1970$`Rent80-99`,na.rm=T)+sum(tract1970$`Rent100-119`,na.rm=T)+sum(tract1970$`Rent120-149`,na.rm=T)+sum(tract1970$`Rent150-199`,na.rm=T)+sum(tract1970$`Rent>200`,na.rm=T))/2
80*0.76
99*0.76
  
sum(tract1980$Rent50)
sum(tract1980$Rent50.99)
sum(tract1980$Rent100.119)
sum(tract1980$Rent120.139)
sum(tract1980$Rent140.149)
sum(tract1980$Rent150.159)
sum(tract1980$Rent160.169)
sum(tract1980$Rent170.199)
sum(tract1980$Rent200.249)
sum(tract1980$Rent250.299)
sum(tract1980$Rent300.399)
sum(tract1980$Rent400.499)
sum(tract1980$Rent500)

(sum(tract1980$Rent50)+sum(tract1980$Rent50.99)+sum(tract1980$Rent100.119)+sum(tract1980$Rent120.139)+sum(tract1980$Rent140.149)+sum(tract1980$Rent150.159)+sum(tract1980$Rent160.169)+sum(tract1980$Rent170.199)+sum(tract1980$Rent200.249)+sum(tract1980$Rent250.299)+sum(tract1980$Rent300.399)+sum(tract1980$Rent400.499)+sum(tract1980$Rent500))/2









  
  

