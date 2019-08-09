##Maps of NYC Zoning 
setwd("~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data In Use/1961 Zoning Map")
zoning1961sp<-readOGR("1961 Zoning Map.shp",dsn = "~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data In Use/1961 Zoning Map")
spplot(zoning1961sp,"ZoningType",main="Zoning Types in NYC (1961)")
spplot(zoning1961sp,"UseType",main="Use Types in NYC (1961)")

setwd("~/Desktop/Dissertation/Zoning Laws and Labor Market Inequality/Data In Use/1961 Zoning Map_FAR")
zoning1961sp<-readOGR("1961 Zoning Map_Far.shp")

my.palette<- brewer.pal(n = 9, name = "Blues")
spplot(zoning1961sp,"FAR",col.regions=my.palette,cuts=9,main="Maximum Floor Area Ratio")

#alternative color
my.palette<- brewer.pal(n = 9, name = "PuRd")
spplot(zoning1961sp,"FAR",col.regions=my.palette,col="transparent",cuts=8,main="Maximum Floor Area Ratio")
