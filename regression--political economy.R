#Politics analysis---Data adjustment
all1950$immigshare<-all1950$FrWhite/all1950$TotPop
all1950$Bshare<-all1950$Black/all1950$TotPop
all1950$lTotPop<-log(all1950$TotPop+1)
all1950$lAvHV<-log(all1950$AvHV+1)
all1950$lAvFI<-log(all1950$AvFI+1)
all1950$lAvRent<-log(all1950$AvRent+1)
all1950$Ownerosh<-all1950$Ownero/all1950$Tothouse
all1950$Renterosh<-all1950$Rentero/all1950$Tothouse
all1950$Unemployedsh<-all1950$Unemployed/all1950$TotPop
all1950$ltothouse<-log(1+all1950$Tothouse)
df=df[is.na(df$Bshare)==F,]    #total population is zero
df=df[is.na(df$Ownerosh)==F,]   #tothouse is equal zero
df=df[is.na(df$AvHV)==F,]      #total housing value report is zero #This created a large deletion of polygons in manhattan
df=df[is.na(df$AvRent)==F,]    #contract rent report is zero
df=df[is.na(df$AvFI)==F,]     #Total family income report is zero

df$lMedianIncome<-log(df$MedianIncome+1)
df$lMedianRent<-log(df$MedianRent+1)
df$lMedianHV<-log(df$MedianHV+1)
df$ltothouse
library(sandwich)
library(lmtest)

#All NYC(Except Manhattan) DATA with borough dummy---Stepwise regression results
df=all1950[all1950$manhattan==0,]
FAR1<-lm(FAR~lAvFI+lTotPop+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations+bronx+island+brooklyn,data=df)
FAR2<-lm(FAR~lAvFI+Ownerosh+lTotPop+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations+bronx+island+brooklyn,data=df)
FAR3<-lm(FAR~lAvFI+Ownerosh+immig+lTotPop+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations+bronx+island+brooklyn,data=df)
FAR4<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+lTotPop+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations+bronx+island+brooklyn,data=df)
FAR5<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+density+density2+density3+density4+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations+bronx+island+brooklyn,data=df)
FAR6<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+lTotPop+Mshare+Cshare+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations+bronx+island+brooklyn,data=df)

coeftest(FAR1,vcov=vcovHAC(FAR1))
coeftest(FAR2,vcov=vcovHAC(FAR2))
coeftest(FAR3,vcov=vcovHAC(FAR3))
coeftest(FAR4,vcov=vcovHAC(FAR4))

#GELBACH SEQUENCE-ORDER Adjustment Code in STATA

#Manhattan--data adjustment
all1950$manhattan<-0
for(i in 1:nrow(all1950)){
if(is.element(61,hex500_1950$COUNTYA[hex500_1950$ID==i])==TRUE){
all1950$manhattan[i]=1
}
}


#nrow(dfm[is.na(dfm$AvHV),])
#[1] 142

dfm=all1950[all1950$manhattan==1&is.na(all1950$UseType)==F,]
FAR_M<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+lTotPop+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations,data=dfm)
coeftest(FAR_M,vcov=vcovHAC(FAR_M)) 
FAR1_M<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+density+density2+density3+density4+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations,data=dfm)
FAR2_M<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+lTotPop+Mshare+Cshare+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations,data=dfm)

#Brooklyn
hex1950$brooklyn<-'0'
for(i in 1:nrow(hex1950)){
if(is.element(47,hex500_1950$COUNTYA[hex500_1950$ID==i])==TRUE){
hex1950$brooklyn[i]=1
}
}

dfb=all1950[all1950$brooklyn==1&is.na(all1950$UseType)==F,]
dfb$lTotPop<-log(dfb$TotPop+1)
dfb$lAvHV<-log(dfb$AvHV+1)
dfb$lAvFI<-log(dfb$AvFI+1)
dfb$lAvRent<-log(dfb$AvRent+1)
dfb$lMedianIncome<-log(dfb$MedianIncome+1)
dfb$lMedianRent<-log(dfb$MedianRent+1)
dfb$lMedianHV<-log(dfb$MedianHV+1)
FAR_B<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+lTotPop+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations,data=dfb)
coeftest(FAR_B,vcov=vcovHAC(FAR_B))

#Queens
all1950$queens<-'0'
for(i in 1:nrow(all1950)){
if(is.element(81,hex500_1950$COUNTYA[hex500_1950$ID==i])==TRUE){
all1950$queens[i]=1
}
}

dfq=all1950[all1950$queens==1&is.na(all1950$UseType)==F,]

FAR_Q<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+lTotPop+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations,data=dfq)
coeftest(FAR_Q,vcov=vcovHAC(FAR_Q))

#Bronx

all1950$bronx<-'0'
for(i in 1:nrow(all1950)){
if(is.element(5,hex500_1950$COUNTYA[hex500_1950$ID==i])==TRUE){
all1950$bronx[i]=1
}
}
dfbr=all1950[all1950$bronx==1&is.na(all1950$UseType)==F,]

FAR_BR<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+lTotPop+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations,data=dfbr)
coeftest(FAR_BR,vcov=vcovHAC(FAR_BR))

#staten island

all1950$island<-'0'
for(i in 1:nrow(all1950)){
if(is.element(85,hex500_1950$COUNTYA[hex500_1950$ID==i])==TRUE){
all1950$island[i]=1
}
}
dfi=all1950[all1950$island==1&is.na(all1950$UseType)==F,]

FAR_I<-lm(FAR~lAvFI+Ownerosh+Bshare+immigshare+lTotPop+water+emp+emp2+emp3+emp4+stadis+stadis2++stadis3+stadis4+stations,data=dfi)

coeftest(FAR_I,vcov=vcovHAC(FAR_I))

#table to latex

library(stargazer)
stargazer(FAR4,FAR_M,title="Full Control for Political Economy Behind Zoning",align=T)
stargazer(FAR4,FAR_M,FAR5,FAR1_M,FAR6,FAR2_M,title="Alternative Specifications of Political Economy",align=T)


