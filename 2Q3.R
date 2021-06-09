ds=read.csv('bda_added%gains.csv')
#dsmax=(ds$Tata..gain)

#dsmax=(ds$Mtnl..gain)

#dsmax=(ds$Reliance..gain)

dsmax=(ds$Airtel..gain)

#dsmax=(ds$Vodafone..gain)

#dsmax=(ds$BSE..gain)


# sorting is from small to highest
# tail top 100 highest
# head top 100 lowest

val=tail(sort(dsmax),100)

#val=head(sort(dsmax),100)
#val=(sort(dsmax,decreasing = TRUE),100)

list1<-c(val)
#k=match(list1,ds$Tata..gain)

#k=match(list1,ds$Mtnl..gain)

#k=match(list1,ds$Reliance..gain)

k=match(list1,ds$Airtel..gain)

#k=match(list1,ds$Vodafone..gain)

#k=match(list1,ds$BSE..gain)

#k[2]
cm=0
ct=0
cw=0
cth=0
cf=0
csa=0
csu=0

for (x in k) {
  
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
    
    #count=count+1
  
  
  #print(list1[[x]])
}


print(paste0(cm," Monday's"))
print(paste0(ct," Tuesday's "))
print(paste0(cw," Wednesday's "))
print(paste0(cth," Thursday's "))
print(paste0(cf," Friday's "))
print(paste0(csa," Saturday's "))
print(paste0(csu," Sunday's "))


