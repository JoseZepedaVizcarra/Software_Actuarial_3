#Dump y Source

setwd("~/GitHub/Software_Actuarial_3")
x <- "Software Actuarial"
y <- data.frame(a=1, b="a")
dump(c("x","y"), file = "data.R")
rm(x,y)
source("Data.R")

#Dump y source trabajan con las instrucciones de código que permitirán volver a construir un objeto en lugar de obtenerlo desde alguna ubicación guardada.
#Los datos se leen usando interfaces de conexiones, normalmente las conexiones se convierten en archivos
#file, abre una conexion a un archivo
#str(file)

#Conexiones
con <- url("https://www.fcfm.buap.mx")
x <- readLines(con,7)
x[7] <- "\t<title>FCFM: Estariamos mejor con otro director en la facultad<title>"

#Está leyendo el codigo fuente dela página(lineas del 16 al 18)

writeLines(readLines(con), "FCFM.html")

#Los operadores, un corchete regrese un objeto dfe la misma clase del orgiinal, puede extraer varios elementos de la lista
#El dobole corchete es usasdo para extraer un elmentno de una lista o de un data frame, solamente extrae un solo elemento. 
#eL signo de pesos sirve para extraer elementos de una lista o data fame por nombre.
#Hagamos correr las siguientes instrucciones

#Creamos un vector
x <- c("a", "b", "c", "c", "d", "e")
#Veamos el vector
x
#Extrraemos elementos con []
x[1]
x[2]
#También podemos extraer una secuencia de elementos
x[1:4]
#Es posible extraer los elementos que cumplen una restricción
x[x>"b"]
#De manera equivalente, se puede obtneer un vector lógico
u <- x == "c"
u
x[u]
x[5-3]



#Creamos una lista
x <- list(foo=1:4, bar=0.6)
x
x[1]  #Conserva la clase del objeto de donde lo saqué - vector dentro de una lista
#eL RESULTADO ES UNA LISTRA QUE CONTIENE AL VECTOR DE LA SECUENCIA 
x[[1]]#Conserva la clase del dato extraido es un vector solo, sin lista
#El resultado es el vector de la secuencia de numeros
x$foo
#el resultado fue un vector como con [[]]
x["bar"]
x[["bar"]]


x <- list(foo=1:4, bar=0.6, baz = "Hola")
x[c(1,3)]
#Extrae elementos no secuenciales 1 si, 2 no, 3 si
x[[c(1,3)]]
#Extrae secuencialmente desde los elementos extraidos
#Primero extrae el primer elemento y de ahi extrae la tercera posicion

name <- "baz"
x[name]
x[[name]]
x$name
#Si yo quiero realizar extracciones con el $, es necesario escribir el nombre del objeto que quiero extraer, ya que no es capaz de realizar evaluaciones
#R está dirigioa  vectores, todo tiene que ver con arreglos


#Ejemplo de extraccion de elementos en una matriz, funciona de manera convencional con la forma ij de los elementos
x <- matrix(1:6,2,3)
x
#El resultado es un vector
x[1,2]
x[2,1]
#Con drop = FALSE, se mantiene la dimension y el resultado sera una matrix
x[1,2, drop=FALSE]


#R puede encontrar el nombre de algunos objetos de manera parcial con $, tambvien poddria ahcerlo con [[ pero necesitariamos decir de manera explicita que queremos una coincidencia parcial
x <- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact=FALSE]]

#extracciones, como haces una extraccion, eso vimos hoy
#R está indicado a operaciones vectoriales