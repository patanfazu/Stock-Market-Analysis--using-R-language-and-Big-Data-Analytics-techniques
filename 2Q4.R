ds=read.csv('bda_added%gains.csv')
date='3-Jan-11'
val=match(date,ds$Date)


money=1000000

xaxis=ds$Index

tatagraph=ds$Tata.Comm.Open.Price*(money/ds[val,19])

mtnlgraph=(ds$Mtnl.Open.Price*(money/ds[val,20]))
relgrph=(ds$Reliance.Open.Price*(money/ds[val,21]))
airtgrph=(ds$Airtel.Open.Price*(money/ds[val,22]))
vodagrph=(ds$Vodafone.Open.Price*(money/ds[val,23]))




# Tata Graph
plot(xaxis,tatagraph,type = 'l',yaxt='n',xlim = c(2500,0),xlab = 'Dates From  <-- 03-Jan-11 to 01-01-21  --->',ylab = 'Tata Value  of  10  lakh  investment  over  time ' )

axis(2,at=tatagraph,labels=format(tatagraph,scientific=FALSE))

# Mtnl Graph
plot(xaxis,mtnlgraph,type = 'l',yaxt='n',xlim = c(2500,0),xlab = 'Dates From  <-- 03-Jan-11 to 01-01-21  --->',ylab = 'Mtnl Value  of  10  lakh  investment  over  time ' )

axis(2,at=mtnlgraph,labels=format(mtnlgraph,scientific=FALSE))

# reliance Graph
plot(xaxis,relgrph,type = 'l',yaxt='n',xlim = c(2500,0),xlab = 'Dates From  <-- 03-Jan-11 to 01-01-21  --->',ylab = 'Reliance Value  of  10  lakh  investment  over  time ' )

axis(2,at=relgrph,labels=format(relgrph,scientific=FALSE))

# Airtel Graph
plot(xaxis,airtgrph,type = 'l',yaxt='n',xlim = c(2500,0) ,xlab = 'Dates From  <-- 03-Jan-11 to 01-01-21  --->',ylab = 'Airtel  Value  of  10  lakh  investment  over  time ' )

axis(2,at=airtgrph,labels=format(airtgrph,scientific=FALSE))


# Vodafone Graph
plot(xaxis,vodagrph,type = 'l',yaxt='n',xlim = c(2500,0),xlab = 'Dates From  <-- 03-Jan-11 to 01-01-21  --->',ylab = ' Vodafone Value  of  10  lakh  investment  over  time ' )

axis(2,at=vodagrph,labels=format(vodagrph,scientific=FALSE))




