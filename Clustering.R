da<-read.csv("Universities.csv")
data<-scale(da[,2:7])
d<-dist(data,method = "euclidian")
fit<-hclust(d,method = "centroid")
plot(fit)
groups<-cutree(fit,k=4)
rect.hclust(fit,k=4,border = "red")
clusters=data.frame('Uni'=da[,1],'Cluster' =groups)
