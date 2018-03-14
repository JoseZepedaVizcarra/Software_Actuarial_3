#TAREAVectores
set.seed(1)
z <- 5
contador <- 0
while(z>=3 && z<=10){
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){ #Caminata Aleatoria
    z <- z+1
  } else {
    z <- z-1
  }
  contador <- contador +1
}
x[contador+1] <- z
x
print(contador); print("valores")
