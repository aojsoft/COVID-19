#one factor eight items, variance std 
m3a <- 'f =~ q01 + q02 + q03 + q04 + q05 + q06 + q07 + q08' 
onefac8items_a <- cfa(m3a, data=dat,std.lv=TRUE) 
summary(onefac8items_a, fit.measures=TRUE, standardized=TRUE)

#fit statistics
summary(onefac8items_a, fit.measures=TRUE, standardized=TRUE)



##########################################################################

#one factor eight items, variance std 
m3a <- 'f =~ q01 + q02 + q03 + q04 + q05 + q06 + q07 + q08' 
onefac8items_a <- cfa(m3a, data=dat,std.lv=TRUE) 
summary(onefac8items_a, fit.measures=TRUE, standardized=TRUE)

#covariance of Items 1 through 8 
round(cor(dat[,1:8]),2)

#fit statistics 
summary(onefac8items_a, fit.measures=TRUE, standardized=TRUE)

#model chi-square 
pchisq(q=554.191,df=20,lower.tail=FALSE)

#baseline model
b1 <- ' q01 ~~ q01 
        q02 ~~ q02 
        q03 ~~ q03 
        q04 ~~ q04 
        q05 ~~ q05 
        q06 ~~ q06 
        q07 ~~ q07 
        q08 ~~ q08' 

basemodel <- cfa(b1, data=dat)
summary(basemodel)

#uncorrelated two factor solution, var std method
m4a <- 'f1 =~ q01+ q03 + q04 + q05 + q08 
        f2 =~ a*q06 + a*q07 
        f1 ~~ 0*f2 ' 
twofac7items_a <- cfa(m4a, data=dat,std.lv=TRUE)