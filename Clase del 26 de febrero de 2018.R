#Listas
x <- list(1,"a", TRUE, 2+2i, 5L)
x

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
#Si yo quisiera que se llenara fila por fila, ser�a 
m <- matrix(data=1:6, nrow=2, ncol=3, byrow=TRUE)
m <- matrix(1:6,2,3, T)
m

#Una manera alteantiva de crear una matriz es desde un vector y modificar su dimensi�n.
m <- 1:10
m
dim(m) <- c(2,5)
m

#Otra forma de crear una matriz es uniendo diferentes vectores.
x <- 1:3
y <- 10:12
#tenemos dos funciones #cbind, unir columnas
cbind(x,y) #Debo correr desde las funciones para que pueda funcionar, de lo contrario ser� imposible
rbind(x,y)

#Factores
x <- factor(c("Si", "Si", "No", "No", "Si"))
x

#Factores por orden alfab�tico
x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"))
x
table(x)
unclass(x) #Funcion unclass 

#Factores con Orden Definido
x <- factor(c("Azul", "Verde", "Verde", "Azul", "Rojo"),levels=c("Rojo", "Amarillo", "Verde", "Azul"))

#Valores Faltantes
x <- c(1,2,NA,10,3)
is.na(x) #Valor Faltante detectado
is.nan(x) #Valor no num�rico que no es faltante 

y <- c(1,2,NaN,10,3)
is.na(y) #Valor Faltante detectado
is.nan(y) #Valor no num�rico que no es faltante 