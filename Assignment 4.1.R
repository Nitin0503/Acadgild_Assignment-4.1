df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1
df2
merge(df1, df2, by="CustId")
merge(df1, df2, by="CustId", all=TRUE)
merge(df1, df2, by="CustId", all.x=TRUE)
merge(df1, df2, by="CustId", all.y=TRUE)
dfx<-merge(df1, df2, by="CustId", all=TRUE)
dfx$CustId <- NULL
dfx
df3<-merge(df1, df2, by="CustId", all.y=TRUE)
df3$State <- NULL
df3
df1$CustId %in% df2$CustId
select_index = which(df1$CustId %in% df2$CustId)
df1[-select_index,]
