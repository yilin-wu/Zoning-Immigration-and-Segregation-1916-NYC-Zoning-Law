#create interacting data set of zoning data and hexagon data
setwd("~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data In Use/hex500")
hex500<-st_read(hex500.shp)
hex500<-st_transform(hex500,CRS("+proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=37.5 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +units=m +no_defs"))

hex500_zone<-as.tibble(st_intersection(hex500,zoning1961))

hex500_zone$intarea<-st_area(hex500_zone$geometry)
hex500_zone$areaweight<-hex500_zone$intarea/hex500_zone$area
hex500_zone$areaweight<-as.numeric(hex500_zone$areaweight)


#create hexagon Use Type categories

hex500$UseType<-""
for( i in 1:nrow(hex500)){
  type=sort(unique(as.character(hex500_zone$UseType[hex500_zone$ID==i])))
  hex500$UseType[hex500$ID==i] = paste0(type, collapse = "/")
}

#create hexagon Manufacturing dummy of land use
hex500$M<-0
for(i in 1:nrow(hex500)){
  if(grepl('M',hex500$UseType[i])==T){hex500$M[i]=1
  }else{hex500$M[i]=0}
}
#create hexagon manufacturing share
a$Mshare<-0
for(i in 1:nrow(a)){
  a$Mshare[a$ID==i]= sum(nh_1961_zone$areaweight[nh_1961_zone$ID==i & nh_1961_zone$UseType=='M'])
}

a$Cshare<-0
for(i in 1:nrow(a)){
  a$Cshare[a$ID==i]= sum(nh_1961_zone$areaweight[nh_1961_zone$ID==i&nh_1961_zone$UseType=='C'])
}

#create hexagon floor area ratio

hex500$FAR<-0
for (i in 1:nrow(hex500_zone)){
  for (j in 1:nrow(hex500)){
    if (hex500_zone$ID[i]==hex500$ID[j]){
      hex500$FAR[j]=hex500$FAR[j]+hex500_zone$FAR[i]*hex500_zone$areaweight[i]
    }
  }
}

# slope narrow
hex500$slopeN<-0
for (i in 1:nrow(hex500_zone)){
  for (j in 1:nrow(hex500)){
    if (hex500_zone$ID[i]==hex500$ID[j]){
      hex500$slopeN[j]=hex500$slopeN[j]+hex500_zone$slopeN[i]*hex500_zone$areaweight[i]
    }
  }
}

#Parking regulation intensity of community/commercial buildings
hex500$PofC<-""
for( i in 1:nrow(hex500)){
  hex500$PofC[hex500$ID==i] = max(unique(hex500_zone$PofC[hex500_zone$ID==i]))
}

#Height above streetline
hex500$HtAbvSt<-0
for (i in 1:nrow(hex500_zone)){
  for (j in 1:nrow(hex500)){
    if (hex500_zone$ID[i]==hex500$ID[j]){
      hex500$HtAbvSt[j]=hex500$HtAbvSt[j]+hex500_zone$HtAbvSt[i]*hex500_zone$areaweight[i]
    }
  }
}

#side yard width

hex500$Syard<-0
for (i in 1:nrow(hex500_zone)){
  for (j in 1:nrow(hex500)){
    if (hex500_zone$ID[i]==hex500$ID[j]){
      hex500$Syard[j]=hex500$Syard[j]+hex500_zone$Syard[i]*hex500_zone$areaweight[i]
    }
  }
}

