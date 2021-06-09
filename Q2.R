ds=read.csv('bda_added%gains.csv')
tata=ds$Tata..gain
mtnl=ds$Mtnl..gain
rel=ds$Reliance..gain
airtel=ds$Airtel..gain
voda=ds$Vodafone..gain
bse=ds$BSE..gain


# 
# t=c(tail(sort(tata),10))
# m=c(tail(sort(mtnl),10))
# r=c(tail(sort(reliance),10))
# a=c(tail(sort(airtel),10))
# v=c(tail(sort(vodafone),10))
# b=c(tail(sort(bse),10))

t=c(head(sort(tata),10))
m=c(head(sort(mtnl),10))
r=c(head(sort(rel),10))
a=c(head(sort(airtel),10))
v=c(head(sort(voda),10))
b=c(head(sort(bse),10))

tatadate<-c()
mtnldate<-c()
reldate<-c()
airteldate<-c()
vodadate<-c()
bsedate<-c()


for (i in 1:10) {
  tindex=match(t[i],tata)
  mindex=match(m[i],mtnl)
  rindex=match(r[i],reliance)
  aindex=match(a[i],airtel)
  vindex=match(v[i],vodafone)
  bindex=match(b[i],bse)
  tatadate=c(tatadate,data[tindex,2])
  mtnldate=c(mtnldate,data[mindex,2])
  reldate=c(reldate,data[rindex,2])
  airteldate=c(reldate,data[aindex,2])
  vodadate=c(vodadate,data[vindex,2])
  bsedate=c(bsedate,data[bindex,2])
  
  
  #print(paste0(ds[index,2]))
  
}
