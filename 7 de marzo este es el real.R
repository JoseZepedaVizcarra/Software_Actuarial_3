setwd("~/GitHub/Software_Actuarial_3")

#Extracción de valores faltantes
airquality[1:6,]#Lo dejo en blanco porque quiero todas las columnas(lo que dejo en blanco es lo que va despuesd e la coma)
complete.cases(airquality[1:6,]) #Hace uan extraccion de cuales son casos completos y cuáles no.

completos <- complete.cases(airquality)
airquality[completos,]

airquality[1:6,]
completos <- complete.cases(airquality)
data <- airquality[completos,]
data[1:6,]
#Al ahcer una extraccion desde un vector de logico, obtengo solo los valores que son TRUE

#Algunas operaciones
x <- 1:4; y<- 6:9 #Si quiero poner las instrucciones en la misma linea, las separon con punto y coma ;

x+y
x>2
#Si quiero evaluar la igualdad, le tengo que poner dos iguales
y==8
#La asignación la buscamos con la flecha, no con el igual.
x*y
x/y

x <- matrix(1:4,2,2); y <- matrix(rep(10,4),2,2)
x*y
x/y
x%*%y
y%*%x #Se pierde la conmutatividad en las matrices dadas

##################################ESTRUCTURAS DE CONTROL
#if, else para probar una condicion
#For, ejecuta un determinado numero de veces
#while, ejecuta un ciclo determinado numero de veces
#repeat, ejecuta un ciclo infinito
#break, termina la ejecucion de un ciclo
#next, "salta" una iteracion de un ciclo
#return, sale de una funcion Entrego el resultado que me da una función, y boom

#Estructura de control if-else
x=3
if (x>5){
  "X es mayor a 5"
} else { "X tiene que ser mayor a 5"
}

if (x>5){
  "X es mayor a 5"
} else if (x<3) {
  "X es menor a 3"
} else {
  "x es igual a 3"
}

x=7
if (x<5){
  print("Menor a 5")
} else if (x<=10){
  print("Entre 5 y 10")
} else {print("Mayor a 10")
}

x=3
if (x>5) {
  print("Mayor")
} else {
  print("Menor")
}

x=3
if (x<3){
  y <- 10
} else {
  y <- 0
}
y

x=3
y <- if (x>3) {
  10
} else {
  0
}
y

#Ahora bien el ciclo for
for (i in 1:10){
  print(i)
}

for (i in 34:60){
  print(i)
}

for (i in c("A","B","C")){
  print(i)
}

#La forma en la que trabaja for dentro de R es más similar al For each de VBA

x <- c("a","b","c","d") #opcion 1   
for(i in 1:4){
  print(x[i])
}
 
for(i in seq_along(x)){ #opcion 2
  print(x[i])
}

for (letra in x){    #opcion 3
  print(letra)
}

for (i in 1:4) print (x[i])  #opcion 4


#Los ciclos FOR pueden ser anidados
#Tipicamente se acostumbra anidar hasta dos o tres niveles. Más allá de ello suele volverse más complicado

x <- matrix(1:6,2,3)
for (i in seq_len(nrow(x))){
  for (j in seq_len(ncol(x)){
    print(x[i,j])
  }
}


#Los ciclos while inician probando una condicion, si esta esverdaera ejecutara una serie de comandos, al terminarlo se vuelve a poner a preuab
#Hay que tener cuidado al programar ciclos while, porque son potencialmente infinitos
count <- 0
while (count < 10){
  print(count)
  count <- count +1
}

#Hace una caminata aleatoria
#A veces se evalúa más de una condición
#Las condiciones se evaluan de izquierda a derecha

z <- 5
while(z>3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z <- z+1
  } else {
 z <- z-1
  }
}

#Ejemplo de numero estandarizado
set.seed(1) 
#El setseed permite que se cree una semilla
z <- 5
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z <- z+1
  } else {
    z <- z-1
  }
}



set.seed(1)
save(moneda) as rdim(1,)
z <- 5
contador <- 0
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z <- z+1
  } else {
    z <- z-1
  }
  contador <- contador +1
}
print (contador)


#Ejemplin

set.seed(1)
z <- 5
contador <- 0
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z <- z+1
  } else {
    z <- z-1
  }
  contador <- contador +1
}
print(contador); print("valores")
x[contador+1] <- z
x

