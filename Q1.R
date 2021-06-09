ds=read.csv('bda_added%gains.csv')
gain1=ds$Tata..gain
gain2=ds$Mtnl..gain
gain3=ds$Reliance..gain
gain4=ds$Airtel..gain
gain5=ds$Vodafone..gain
gain6=ds$BSE..gain
print(paste("Correlation of BSE Market with Tata is ",cor(gain6,gain1)))
print(paste("Correlation of BSE Market with Mtnl is ",cor(gain6,gain2)))
print(paste("Correlation of BSE Market with Reliance is ",cor(gain6,gain3)))
print(paste("Correlation of BSE Market with Airtel is ",cor(gain6,gain4)))
print(paste("Correlation of BSE Market with Vodafone is ",cor(gain6,gain5)))


