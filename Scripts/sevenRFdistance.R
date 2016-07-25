library(ape)
library(phangorn)

setwd("/Users/glowworm/Documents/STAT/2016Match/COAL2012")

Mytrees<-read.tree("t7all")

Myprob<-read.table("myout")

data= array(NA, dim=c(10395*10395,7))

for (i in 1:10395){
	for (j in 1:10395){	
   rfunrooted<-RF.dist(Mytrees[[i]],Mytrees[[j]],rooted=FALSE)
   rfrooted<-RF.dist(Mytrees[[i]],Mytrees[[j]],rooted=TRUE)
   data[10395*(i-1)+j,1] = i
   data[10395*(i-1)+j,2] = j
   data[10395*(i-1)+j,3] = rfunrooted
   data[10395*(i-1)+j,4] = rfrooted
   data[10395*(i-1)+j,5] = Myprob[i,2]
   data[10395*(i-1)+j,6] = Myprob[j,2]
   data[10395*(i-1)+j,7] = Myprob[i,2]*Myprob[j,2]  
	}		
}

sumunrooted<-tapply(data[,7], data[,3], FUN=sum)
sumrooted<-tapply(data[,7], data[,4], FUN=sum)
write.table(sumunrooted,"sumunrooted.txt")
write.table(sumrooted,"sumrooted.txt")