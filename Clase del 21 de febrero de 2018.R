#Aquí se está realizando una asignación
x <- 1
x <- 2

#La asignación no me permitió visualizar el resultado, para ello debo solicitar una impresión
print(x)

#Al poner mayúscula, que no ha sido definida, se marcará error
print(X)

#La alternativa será solicitar una impresión implícita
x

#La asignación puede hacerse también de textos
msg <- "Hola"

#Al solicitar una impresión , me deberá enseñar el mensaje que estaba guardado 
print(msg)

x <- #Expresión Incompleta, para salir de ella(dejar de ejecutar)presiona ESC

  #Impresión de un arreglo
  x <- 1:20

y <- 3:9
y
z <- 99:43
z
#El operador ":" me permite generar secuencias numéricas de un principio a un fin
w <- 3:14.5
w
#En el caso de trabajar con decimales, me genera secuencias hasta los enteros correspondientes.

#R nos permite trabajar con conceptos matemáticos "superiores" como los números complejos o el concepto de infinito.
Inf
1/0
#Es posible hacer algunas operaciones con este valor 
exp(-Inf) #0
Inf + Inf #Inf
Inf * Inf #Inf
Inf - Inf #NaN (Not A Number)
Inf / Inf #Nan

#Cada objeto tiene sus propiedades o atributos los cuales se pueden 

#Es posible crear un vector con la función c()
x <- c(TRUE, FALSE, TRUE, TRUE, F, F, T) #Logical
x <- c(1L, 3L, 5L, -4L) #Integer
x <- c(1,3,3,-4) #Numeric
x <- c(1,3,3,-4, 3-141596)
x <- c(1+1i, 3+4i, -5-6i, 3.14-1.618i) #Complex
x <- c("a", "b", "c", "Hola", "Mundo") #Character

#Otro posible camino sería con la función vector
x <- vector("numeric", length =10)
#El vector se crea vacío

#coercion
y <- c(1.7,"a") #Character
y <- c(TRUE, 2) #Numeric
y <- c(FALSE, 2L, 5, 5+4i) #COmplex

#Coercion Forzada
x <- 0:6 #Integer
as.numeric (x) #Numeric
as.logical (x) #Logical, los 0 se vuelven false y todo lo demás queda como True
as.character(x) #Todo se vuelve texto

#Errores en la coercion Forzada
x <- c("a", "b", "c")
as.numeric(x)
as.logical(x)
as.complex(x)
#Aparecerán NA porque esa coercion no es posible y genera un valor vacío


