getwd()
setwd("C:/Users/Airida/Desktop")
data<-read.csv("data-table-6.csv")
data
data1<-subset(data, Gyvenamoji.vietovÄ.=="Miestas ir kaimas"&Lytis=="Vyrai ir moterys")
average<-aggregate(data1[,7], list(data1$AmÅ.ius..tikslinÄ.s.amÅ.iaus.grupÄ.s.),mean)
average


maksimalus<-aggregate(data1[,7],list(data1$ï..Laikotarpis),max, na.rm=T)
minimalus<-aggregate(data1[,7],list(data1$ï..Laikotarpis),min, na.rm=T)

plot(maksimalus, ylim=c(0,40),type="l", ylab="Nedarbo lygis, %",xlab="Metai", col="red")
lines(minimalus,type="l",col="blue")

        
        
