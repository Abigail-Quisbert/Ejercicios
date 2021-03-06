library(cluster)
library(dplyr)
#cual es el numero optimo de k 

library(fpc)
sol<-pamk(iris[,-5],krange=2:10,criterion="asw",usepam=TRUE)
sol

pank(bd,krange=2:10,usepam=TRUE)

# Ejercicio. Utilizando la base de datos de las elecciones del 20 de octubre, crear una base de datos a nivel municipal, aplicar el m�todo k-center con medoides para los resultados a nivel municipal y terminar el $k$ �ptimo en un rango de $k=2:10$ (Usar datos relativos)
load("D:\\2020\\bases de datos\\oct20.RData")
bd<-data.frame(computo[6], computo[14:25])

bd1<-bd%>%filter(bd$Municipio=="Sucre")
kmeans(bd1[,-1],3)
pamk(bd1[,-1],krange=2:10,criterion="asw",usepam=TRUE)
