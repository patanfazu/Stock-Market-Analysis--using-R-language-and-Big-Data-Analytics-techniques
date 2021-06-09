getwd()
ds=read.csv('bda_added%gains.csv')
#dsmax=(ds$Tata..gain>0)
#dsmax=(ds$Tata..gain<0)
#dsmax=(ds$Mtnl..gain>0)
#dsmax=(ds$Mtnl..gain<0)
#dsmax=(ds$Reliance..gain>0)
#dsmax=(ds$Reliance..gain<0)
dsmax=(ds$Airtel..gain>0)
#dsmax=(ds$Airtel..gain<0)
#dsmax=(ds$Vodafone..gain>0)
#dsmax=(ds$Vodafone..gain<0)
#dsmax=(ds$BSE..gain>0)
#dsmax=(ds$BSE..gain<0)




list2<-c(dsmax)

count=0
cm=0
ct=0
cw=0
cth=0
cf=0
csa=0
csu=0

for (x in 1:(length(list2))) {
  if(list2[x]==TRUE)
  {
    i=ds[x,3]
    
    
    if(i=='Monday'){
      cm=cm+1
      
    }else if(i=='Tuesday'){
      ct=ct+1
    }else if(i=='Wednesday'){
      cw=cw+1
    }else if(i=='Thursday'){
      cth=cth+1
    }else if(i=='Friday'){
      cf=cf+1
    }else if(i=='Saturday'){
      csa=csa+1
    }else if(i=='Sunday'){
      csu=csu+1
    }
    #print(cm,ct)
    
    count=count+1
  }
    
  
  #print(list1[[x]])
}

#print(list2)
#list2[[3]]==FALSE

print(paste0(cm," Monday's"))
print(paste0(ct," Tuesday's "))
print(paste0(cw," Wednesday's "))
print(paste0(cth," Thursday's "))
print(paste0(cf," Friday's "))
print(paste0(csa," Saturday's "))
print(paste0(csu," Sunday's "))

print(paste0("Out of ",length(dsmax)," days only ",count, " have % gains"))
