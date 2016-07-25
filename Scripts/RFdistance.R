library(ape)
library(phangorn)

setwd("/Users/glowworm/Documents/STAT/2016Match/COAL2012")

Mytrees<-read.table("t5all2")
attach(Mytrees)

Myprob<-read.table("myout")

data= array(NA, dim=c(105*105,7))

for (i in 1:105){
	for (j in 1:105){	

   rfunrooted<-RF.dist(V1[[i]],V1[[j]],rooted=FALSE)
   rfrooted<-RF.dist(V1[[i]],V1[[j]],rooted=TRUE)
   data[105*(i-1)+j,1] = i
   data[105*(i-1)+j,2] = j
   data[105*(i-1)+j,3] = rfunrooted
   data[105*(i-1)+j,4] = rfrooted
   data[105*(i-1)+j,5] = Myprob[i,2]
   data[105*(i-1)+j,6] = Myprob[j,2]
   data[105*(i-1)+j,7] = Myprob[i,2]*Myprob[j,2]  
	}		
}

sumunrooted<-tapply(data[,7], data[,3], FUN=sum)
sumrooted<-tapply(data[,7], data[,4], FUN=sum)
write.table(sumunrooted,"sumunrooted.txt")
write.table(sumrooted,"sumrooted.txt")