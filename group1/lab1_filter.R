#Landlock
EPILand<-EPI[!Landlock]
ELand <- EPILand[!is.na(EPILand)]
#
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)

