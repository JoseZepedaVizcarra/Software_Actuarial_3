x <- c("a","b","c","d")
for (i in 1:4){
  print(x[i])
}

for(i in seq_along(x)){
  print(x[i])
}

for (letra in x){
  print(letra)
}

for (i in 1:4) print (x[i])
