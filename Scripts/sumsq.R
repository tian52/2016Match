sumsq<-0
x<-read.table("/Users/glowworm/Documents/STAT/2016Match/COAL2012/myout",na.strings="nan")
x[is.na(x)] <- 0
attach(x)
sumsq<-sum(V2^2)
write.table(sumsq, row.names = FALSE, col.names = FALSE, file = "/Users/glowworm/Documents/STAT/2016Match/COAL2012/sumsq")