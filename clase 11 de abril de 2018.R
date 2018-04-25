imprimeMSJ <- function(x){
    if(x>0)
    print("x es mayor que 0")
  else
    print("x es menor o igual a 0")
  
  invisible(x)
}

imprimeMSJ(1)
imprimeMSJ(NA)
imprimeMSJ(-1)




imprimeMSJ <- function(x){
  if (is.na(x))
    print("X es un valor faltante")
    else if(x>0)
      print("x es mayor que 0")
    else
      print("x es menor o igual a 0")
  
invisible(x)
}

imprimeMSJ(1)
imprimeMSJ(NA)
imprimeMSJ(-1)

str(str)
str(lm)
str(ls)

x <- rnorm(100)
str(x)
summary(x)
f <- gl(40,10)
str(f)
summary(f)
summary(airquality)

#Cuando se trabe porque te de debud o algo, cuando hagas debug, toma nota porque
#te conviene quitarselo cuando dejes de trabajar con ella porque de lo contrario
#te puede mandar a revisión una y otra vez

m <- matrix(rnorm(100),10,10)
str(m)
summary(m)

s <- split(airquality,airquality$Month) 
str(s)
x <- rnorm(10)
x

y <- rnorm(10,50,5)
y

summary(x)
summary(y)
