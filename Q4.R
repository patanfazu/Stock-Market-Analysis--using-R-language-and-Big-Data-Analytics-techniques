ds=read.csv('bda_added%gains.csv')
date='3-Jan-11'
val=match(date,ds$Date)
# 19 Tata 20 Mtnl 21 Reliance 22 airtel 23 Vodafone
buy=ds[val,19]
#buy=ds[val,20]
#buy=ds[val,21]
#buy=ds[val,22]
#buy=ds[val,23]
## buys at close sells at open

money=1000000
noof=(money/buy)
noof
ranges<-c(20,60,120,245,735,1225,2450)
val1<-c()

for (i in ranges) {
  index=val-i
  # 4 Tata 5 Mtnl 6 Reliance 7 Airtel 8 Vodafone
  sell=ds[index,4]
  #sell=ds[index,5]
  #sell=ds[index,6]
  #sell=ds[index,7]
  #sell=ds[index,8]
  
  shreprice=sell*noof
  #print(shreprice)
  val1=c(val1,shreprice)
  #append(shreprice,value)
  print(paste0("Value of Stock after invest of ",i," days is   ", formatC(as.numeric(shreprice), format="f", digits=2, big.mark=",")))
  
}





















