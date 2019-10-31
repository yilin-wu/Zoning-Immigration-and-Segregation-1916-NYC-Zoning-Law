
all1960$Bcityshare<-all1960$Black/sum(all1960$Black,na.rm=T)
all1970$Bcityshare<-all1970$Black/sum(all1970$Black,na.rm=T)  
all1980$Bcityshare<-all1980$Black/sum(all1980$Black,na.rm=T)

for (j in 1:nrow(all1970)) {
 a=distance$c[distance$InputID==1 & distance$TargetID==j] *all1970$Bshare[j]*all1970$Bshare[1]
}

distance$Bcityshare1980<-0
for(i in 1:nrow(all1980)){
  distance$Bcityshare1980[distance$TargetID==i]<-all1980$Bcityshare[i]
}

distance$Bcityshare1970<-0
for(i in 1:nrow(all1970)){
  distance$Bcityshare1970[distance$TargetID==i]<-all1970$Bcityshare[i]
}

distance$Bcityshare1960<-0 
for(i in 1:nrow(all1960)){
  distance$Bcityshare1960[distance$TargetID==i]<-all1960$Bcityshare[i]
}


distance$Bcityshare1960c<-distance$Bcityshare1960*distance$c
distance$Bcityshare1970c<-distance$Bcityshare1970*distance$c
distance$Bcityshare1980c<-distance$Bcityshare1980*distance$c


all1970$cluster<-0
for (i in 1:nrow(all1970)){
    all1970$cluster[i]= sum(distance$Bcityshare1970c[distance$InputID==i],na.rm=T)
}
all1970$cluster<-all1970$cluster+all1970$Bcityshare

all1980$cluster<-0
for (i in 1:nrow(all1980)){
  all1980$cluster[i]= sum(distance$Bcityshare1980c[distance$InputID==i],na.rm=T)
}
all1980$cluster<-all1980$cluster+all1980$Bcityshare

all1960$cluster<-0
for (i in 1:nrow(all1960)){
  all1960$cluster[i]= sum(distance$Bcityshare1960c[distance$InputID==i],na.rm=T)
}
all1960$cluster<-all1960$cluster+all1960$Bcityshare



