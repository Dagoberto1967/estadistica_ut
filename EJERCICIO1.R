# Actualizar R


install.packages("installr", dependencies = TRUE)
library(installr)
updateR()


# Manejo de datos
# Taller 1

# Ejercicio 1

x <- 5
y <- 0
w <- 0
z <- 0.0005

w/x
x/z
x/y
y/w
exp(-(y/x))
sqrt(z/2)

# Ejercicio 2

A <- c(21, 35, 28, 63, 9, 89, 54, 19, 26, 56, 54, 22, 49)
str(A)
sum(A)
min(A)
max(A)
length(A)
sort(A)
sort(A,decreasing = T)
mean(A)
mean(6*A)

# Ejercicio 3

x <- c(80,79,83,84,78,60,82,85,79,84,80,62)
y <- c(300,302,315,330,300,250,300,340,315,330,310,240)
plot(x,y)
plot(x,y,main="Diagrama de dispersi贸n")
plot(x,y,main="Diagrama de dispersi贸n", xlab="HORAS TRABAJADAS")
plot(x,y,main="Diagrama de dispersi贸n", xlab="HORAS TRABAJADAS", ylab="PRODUCCI覰")
plot(x,y,main="Diagrama de dispersi贸n", xlab="HORAS TRABAJADAS", ylab="PRODUCCI覰", col="red")
plot(x,y,main="Diagrama de dispersi贸n", xlab="HORAS TRABAJADAS", ylab="PRODUCCI覰", col="red", cex=1)
plot(x,y,main="Diagrama de dispersi贸n", xlab="HORAS TRABAJADAS", ylab="PRODUCCI覰", col="red", cex=1, pch=3)
cor(x,y)

# Ejercicio 4

getwd()

x <- read.csv("indicadores.csv", header = T, sep = ",", dec=".")
colnames(x)[1]<-"ciudad"
tasamenores5 <- x$menores5/x$poblacion

xnuevo <- data.frame(x, tasamenores5)

pie(xnuevo$poblacion,labels=xnuevo$ciudad, main="Distribuci髇
porcentual de la poblaci髇 por ciudad", col = c("purple4",
                                                "violetred1", "green3", "cornsilk2"))

# Ordena base datos descendente seg鷑 tasamenores5 (- indica descendente)

xnuevo1<-xnuevo[order(-xnuevo$tasamenores5),]
barplot(xnuevo1$tasamenores5, main="Proporci髇 de poblaci髇 menor
de 5 a駉s por ciudad", xlab ="Ciudad", names.arg=xnuevo1$ciudad,
        ylim=c(0,0.25),col = rainbow(4),cex.names=0.9)

# Evoluci髇 de la tasa de desempleo


desempleo<-rbind(xnuevo$desempleo2013,xnuevo$desempleo2014)
barplot(desempleo, main="Tasa de desempleo 2013-2014 por ciudad",
        xlab="Ciudad",
        names.arg=xnuevo$ciudad, ylim=c(0,15), col=c("lightcyan","lavender"),
        cex.names=0.9, beside = T, legend.text = c("2013", "2014"))


# Ejercicio 5

getwd()

y <- read.table("poblacion.csv", header = T, sep = ",", dec=".")

tasaPPE2013 <- y$PPE2013 / y$Poblacion2013

ynuevo <- data.frame(y, tasaPPE2013)

pie(ynuevo$Poblacion2013,labels=ynuevo$Ciudad, main="Distribuci髇
porcentual de la poblaci髇 por ciudad", col = c("#c4a23c", 
                                                "#59378a", 
                                                "#5dbc6d", 
                                                "#bf73cb", 
                                                "#79933b", 
                                                "#677fd8", 
                                                "#b85b37", 
                                                "#48bf9e", 
                                                "#b5508f", 
                                                "#bc4862"))

ynuevo1<-ynuevo[order(-ynuevo$tasaPPE2013),]
barplot(ynuevo1$tasaPPE2013, main="Proporci髇 de pobreza extrema", xlab ="Ciudad", names.arg=ynuevo1$Ciudad,
        ylim=c(0,0.07),col = rainbow(10),cex.names=0.9)


IPM<-rbind(ynuevo$IPM2011,ynuevo$IPM2012,ynuevo$IPM2013)
barplot(IPM, main="Incidencia de la pobresa monetaria 2011-2013 por ciudad",
        xlab="Ciudad",
        names.arg=ynuevo$Ciudad, ylim=c(0,50), col=c("lightcyan","lavender", "blue"),
        cex.names=0.9, beside = T, legend.text = c("2011", "2012", "2013"))

