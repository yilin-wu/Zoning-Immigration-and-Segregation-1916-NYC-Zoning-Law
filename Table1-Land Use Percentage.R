###calculating land area percentage in each boro
library(sf)
library(tidyr)
#land use in nyc
zoning1961<-st_read('1961 Zoning Map.shp',dsn="~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data In Use/1961 Zoning Map")
zoning1961$area<-st_area(zoning1961$geometry)
zoning1961$area<-as.numeric(zoning1961$area)
zoning1961$area<-zoning1961$area/10000
sum(zoning1961$area)
sum(zoning1961[zoning1961$UseType=='R',]$area)
sum(zoning1961[zoning1961$UseType=='C',]$area)
sum(zoning1961[zoning1961$UseType=='M',]$area)
sum(zoning1961[zoning1961$UseType=='P',]$area)


#land use in different boro

boro<-st_read('boro.shp',dsn="~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data In Use/Borough Boundaries")
boro<-st_transform(boro,CRS("+proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=37.5 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +units=m +no_defs"))
zone_boro<-as_tibble(st_intersection(zoning1961,boro))
zone_boro<-within(zone_boro,rm("area"))
zone_boro$area<-st_area(zone_boro$geometry)
zone_boro$area<-as.numeric(zone_boro$area)
zone_boro$area<-zone_boro$area/10000

#Bronx
zone_boro_bronx<-zone_boro[zone_boro$boro_name=="Bronx",]
sum(zone_boro_bronx$area)
sum(zone_boro_bronx[zone_boro_bronx$UseType=='R',]$area)
sum(zone_boro_bronx[zone_boro_bronx$UseType=='C',]$area)
sum(zone_boro_bronx[zone_boro_bronx$UseType=='M',]$area)
sum(zone_boro_bronx[zone_boro_bronx$UseType=='P',]$area)

#Staten Island
zone_boro_island<-zone_boro[zone_boro$boro_name=="Staten Island",]
sum(zone_boro_island$area)
sum(zone_boro_island[zone_boro_island$UseType=='R',]$area)
sum(zone_boro_island[zone_boro_island$UseType=='C',]$area)
sum(zone_boro_island[zone_boro_island$UseType=='M',]$area)
sum(zone_boro_island[zone_boro_island$UseType=='P',]$area)

#Queens
zone_boro_queens<-zone_boro[zone_boro$boro_name=="Queens",]
sum(zone_boro_queens$area)
sum(zone_boro_queens[zone_boro_queens$UseType=='R',]$area)
sum(zone_boro_queens[zone_boro_queens$UseType=='C',]$area)
sum(zone_boro_queens[zone_boro_queens$UseType=='M',]$area)
sum(zone_boro_queens[zone_boro_queens$UseType=='P',]$area)

#Brooklyn
zone_boro_brooklyn<-zone_boro[zone_boro$boro_name=="Brooklyn",]
sum(zone_boro_brooklyn$area)
sum(zone_boro_brooklyn[zone_boro_brooklyn$UseType=='R',]$area)
sum(zone_boro_brooklyn[zone_boro_brooklyn$UseType=='C',]$area)
sum(zone_boro_brooklyn[zone_boro_brooklyn$UseType=='M',]$area)
sum(zone_boro_brooklyn[zone_boro_brooklyn$UseType=='P',]$area)

#Manhattan
zone_boro_manhattan<-zone_boro[zone_boro$boro_name=="Manhattan",]
sum(zone_boro_manhattan$area)
sum(zone_boro_manhattan[zone_boro_manhattan$UseType=='R',]$area)
sum(zone_boro_manhattan[zone_boro_manhattan$UseType=='C',]$area)
sum(zone_boro_manhattan[zone_boro_manhattan$UseType=='M',]$area)
sum(zone_boro_manhattan[zone_boro_manhattan$UseType=='P',]$area)



