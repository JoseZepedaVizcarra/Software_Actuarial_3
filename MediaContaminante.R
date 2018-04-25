variable <- read.csv("C:/Users/jose_/Downloads/spectdata/)
attach(variable)

directorio  ="C:/Users/jose_/Downloads/spectdata"

mediacontaminante <- function(directorio, contaminante = "nitrate", id = 1:322){
if (contaminante == "nitrate") {
  columna = 2
} else if (contaminante == "sulfate") {
  columna = 3
}
  contador <- 0
  suma <- 0
  
  for (i in id) {
    a <- formatC(i,width = 3, flag = "0")
    b <- paste(a,"csv", sep=".")
    tab <- read.csv(b)
    contador <- length(na.omit(tab,[,columna]))+contador
    
    suma <- sum(tab[,columna],nr.rm=TRUE)
  }
  
  promedio <- suma/contador
  promedio
  
}

mediacontaminante(directorio, ""nitrate",1:332)


