#Listas
x <- list(1,"a", TRUE, 2+2i, 5L)
x
#Todos los elementos de una lista mantienen la clase original

#Matrices
m <- matrix(nrow=2, ncol=3)
m <- matrix(NA,2,3)
m
dim(m)
attributes(m)

#Como llenar una matrix
m <- matrix(data=1:6, nrow=2, ncol=3)
m <- matrix(1:6,2,3)
m
#La manera de llenarse fue columna por columna
#Si yo quisiera que se llenara fila por fila, sería 
m <- matrix(data=1:6, nrow=2, ncol=3, byrow=TRUE)
m <- matrix(1:6,2,3, T)
m

#Una manera alteantiva de crear una matriz es desde un vector y modificar su dimensión.
m <- 1:10
m
dim(m) <- c(2,5)
m

#Otra forma de crear una matriz es uniendo diferentes vectores.
x <- 1:3
y <- 10:12
#tenemos dos funciones #cbind, unir columnas
cbind(x,y) #Debo correr desde las funciones para que pueda funcionar, de lo contrario será imposible
rbind(x,y)

#Factores
x <- factor(c("Si", "Si", "No", "No", "Si"))
x

#Factores por orden alfabético
x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"))
x
table(x)
unclass(x) #Funcion unclass 

#Factores con Orden Definido
x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"),levels=c("Rojo", "Amarillo", "Verde", "Azul"))

#Valores Faltantes
x <- c(1,2,NA,10,3)
is.na(x) #Valor Faltante detectado
is.nan(x) #Valor no numérico que no es faltante 

y <- c(1,2,NaN,10,3)
is.na(y) #Valor Faltante detectado
is.nan(y) #Valor no numérico que no es faltante 

#Dataframe
x<- data.frame(foo = 1:4, bar = c(T, T, F, F))
x
nrow(x)
ncol(x)

#Names
x <-1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)

#Las listas también pueden tener nombres
x <- list(a=1, b=2, c=3)
x

m <- matrix(1:4, nrow=2, ncol=2)
dimnames(m) <- list(c("a", "b"),c("c", "d"))
m


                     