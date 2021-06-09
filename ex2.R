data=read.csv('bda_added%gains.csv')

tata=((data$Tata.Commn.Close.Price-data$Tata.Comm.Open.Price)/data$Tata.Commn.Close.Price)*100

mtnl=((data$Mtnl.Close.Price-data$Mtnl.Open.Price)/data$Mtnl.Close.Price)*100

reliance=((data$Reliance.Close.Price-data$Reliance.Open.Price)/data$Reliance.Close.Price)*100

airtel=((data$Airtel.Close.Price-data$Airtel.Open.Price)/data$Airtel.Close.Price)*100

vodafone=((data$Vodafone.Close.Price-data$Vodafone.Open.Price)/data$Vodafone.Close.Price)*100

bse=data$BSE..gain

t=c(head(sort(tata),10))
m=c(head(sort(mtnl),10))
r=c(head(sort(reliance),10))
a=c(head(sort(airtel),10))
v=c(head(sort(vodafone),10))
b=c(head(sort(bse),10))

tatadate<-c()
mtnldate<-c()
reldate<-c()
airteldate<-c()
vodadate<-c()
bsedate<-c()

# retrive date of top 10, we get row no from match and retrived corresponding on row
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
  airteldate=c(airteldate,data[aindex,2])
  vodadate=c(vodadate,data[vindex,2])
  bsedate=c(bsedate,data[bindex,2])
  
  
  #print(paste0(ds[index,2]))
  
}
#corr with match with tata
# match dates with  bsedata dates
mt=c()
mm=c()
mr=c()
ma=c()
mv=c()
for (i in 1:10) {
  #print(paste0(i))
  
  mt=c(mt,match(bsedate[i],tatadate))
  mm=c(mm,match(bsedate[i],mtnldate))
  mr=c(mr,match(bsedate[i],reldate))
  ma=c(ma,match(bsedate[i],airteldate))
  mv=c(mv,match(bsedate[i],vodadate))
}
ct=0
cm=0
cr=0
ca=0
cv=0



print(paste0("With -ve gains of Tata ",length(mt[!is.na(mt)])))
print(paste0("With -ve gains of mtnl ",length(mm[!is.na(mm)])))
print(paste0("With -ve gains of Reliance ",length(mr[!is.na(mr)])))
print(paste0("With -ve gains of Airtel ",length(ma[!is.na(ma)])))
print(paste0("With -ve gains of vodafone ",length(mv[!is.na(mv)])))


