#VECTORIZAR UNA FUNCION

noise <- function(n,mean,sd){
  rnorm(n,mean,sd)
}
noise(5,1,2)
noise(1:5,1:5,2)

#vectorizar una funcion significa que yo la puedo ahcer trabajar con vectores, aunque
#de una manera esta función está trabajando con numeros sueltos.
#El valor de media es el que le crea conflicto.

mapply(noise,1:5,1:5,2)

#TAPPLY
str(tapply)
#x es un vector
#INDEX es un factor o una lista de factores
#FUN es una función a aplicar
#... son otros argumentros a pasar a FUN
#simplify: Se debe simplificar el resultado

x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10)
f
tapply(x,f,mean)

tapply(x,f,mean,simplify=F) #En lugar de entregarlo como tabla, lo entregará como una lista


#SPLIT
str(split)
#x es un vector, lista o datadrame
#f es un factor o lista de factores
#drop indica si los factores vacios deberian de omitirse

x <- c(rnorm(10),runif(10),rexp(10))
f <- gl(3,10)
f
split(x,f)
#Es comun primero aplicar un split y despues lapply
lapply(split(x,f)mean)) #Esto no entiendo que pedotl pero no corre.

library(datasets) #Los datasets son conjuntos de datos que ya estan predeterminados
head(airquality) #Head hace que nada más ensñe 6 filas.

split(airquality,airquality$Month)

sapply(split(airquality,airquality$Month),colMeans,na.rm=TRUE)

colMeans(airquality)
colMeans(airquality, na.rm=T)

#Split a más de un nivel
x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
f2
interaction(f1,f2)
#Los niveles crean las posibles combinaciones de uno con el otro.
#No todos los niveles existieron a la hora de hacer la interaccion del ejeercicio anterior
x
str(split(x,list(f1,f2)))


#Los caballos de fuerza promedio de 4 son tanto, los de 6 son tanto y los de 8 son tantos.
#Con el dataframe de los cars
dataframe(cars)
head(cars)
data.frame(cars)

#Lo necesario es sacar los promedios de caballos de fuerza y luego separarlos.
head(mtcars)
sapply(split(mtcars$hp, mtcars$cyl), mean)

sapply(split(mtcars$mpg, mtcars$cyl), mean)

#ConHEAD lo que logro es que me muestre solo los primeros 6 valores.