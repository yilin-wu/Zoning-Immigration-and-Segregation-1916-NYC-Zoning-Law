#Figure of BshareTrend

#construct data
mean(all1950$Bshare[all1950$FAR<0.5],na,rm)
std(all1950$Bshare[all1950$FAR<0.5])
mean(all1960$Bshare[all1960$FAR<0.5],na.rm=T)
std(all1960$Bshare[all1960$FAR<0.5])
mean(all1970$Bshare[all1970$FAR<0.5],na.rm=T)
std(all1970$Bshare[all1970$FAR<0.5])
mean(all1980$Bshare[all1980$FAR<0.5],na.rm=T)
std(all1980$Bshare[all1980$FAR<0.5])

mean(all1950$Bshare[all1950$FAR>0.5 & all1950$FAR<1],na.rm=T)
std(all1950$Bshare[all1950$FAR>0.5 & all1950$FAR<1])
mean(all1960$Bshare[all1960$FAR>0.5 & all1960$FAR<1],na.rm=T)
std(all1960$Bshare[all1960$FAR>0.5 & all1960$FAR<1])
mean(all1970$Bshare[all1970$FAR>0.5 & all1970$FAR<1],na.rm=T)
std(all1970$Bshare[all1970$FAR>0.5 & all1970$FAR<1])
mean(all1980$Bshare[all1980$FAR>0.5 & all1980$FAR<1],na.rm=T)
std(all1980$Bshare[all1980$FAR>0.5 & all1980$FAR<1])



mean(all1950$Bshare[all1950$FAR<2 & all1950$FAR>1],na.rm=T)
std(all1950$Bshare[all1950$FAR<2 & all1950$FAR>1])
mean(all1960$Bshare[all1960$FAR<2 & all1960$FAR>1],na.rm=T)
std(all1960$Bshare[all1960$FAR<2 & all1960$FAR>1])
mean(all1970$Bshare[all1970$FAR<2 & all1970$FAR>1],na.rm=T)
std(all1970$Bshare[all1970$FAR<2 & all1970$FAR>1])
mean(all1980$Bshare[all1980$FAR<2 & all1980$FAR>1],na.rm=T)
std(all1980$Bshare[all1980$FAR<2 & all1980$FAR>1])
mean(all1950$Bshare[all1950$FAR<5 & all1950$FAR>2],na.rm=T)
std(all1950$Bshare[all1950$FAR<5 & all1950$FAR>2])
mean(all1960$Bshare[all1960$FAR<5 & all1960$FAR>2],na.rm=T)
std(all1960$Bshare[all1960$FAR<5 & all1960$FAR>2])
mean(all1970$Bshare[all1970$FAR<5 & all1970$FAR>2],na.rm=T)
std(all1970$Bshare[all1970$FAR<5 & all1970$FAR>2])
mean(all1980$Bshare[all1980$FAR<5 & all1980$FAR>2],na.rm=T)
std(all1980$Bshare[all1980$FAR<5 & all1980$FAR>2])

mean(all1950$Bshare[all1950$FAR>5],na.rm=T)
std(all1950$Bshare[all1950$FAR>5])
mean(all1960$Bshare[all1960$FAR>5],na.rm=T)
std(all1960$Bshare[all1960$FAR>5])
mean(all1970$Bshare[all1970$FAR>5],na.rm=T)
std(all1970$Bshare[all1970$FAR>5])
mean(all1980$Bshare[all1980$FAR>5],na.rm=T)
std(all1980$Bshare[all1980$FAR>5])

Btrend<-read_csv('Bshare_Trend.csv')

ggplot(Btrend,aes(x=year,y=Bshare,colour=FAR))+
  geom_line()+
  geom_point()

Btrend_plot<-ggplot(Btrend,aes(x=year,y=Bshare,colour=FAR))+
  geom_line()+
  geom_point()+
  theme_classic()+
  geom_vline(xintercept = 1961,linetype='dashed',size=1.5)
  
print(Btrend_plot+labs(y='Black Population Share',x='Year',colours='1961 Maximum FAR Regulation'))
      
