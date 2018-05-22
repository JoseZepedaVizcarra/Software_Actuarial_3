mejor <- function(estado,resultado){

  getwd()
  setwd("~/Users/jose_/OneDrive/Documentos")
  dir  <- read.csv("outomeofcaremeasuresLIBROEXCEL.csv")
  
  if(resultado=="ataque"){enc<- 11} else{
    if(resultado=="falla"){enc<-17} else{
      if(resultado=="neumonia"){enc<-23} else
        if(resultado !="ataque" & resultado !="falla" & resultado !="neumonia"){stop("Resultado NO VÁLIDO")}
    }
  }
  if(all(sapply(dir$State,function(x){x!=estado}))==FALSE){
    DatFr1<-data.frame(dir$Hospital.Name,dir$State,dir[,enc])
    DatFr2<-subset(DatFr1,DatFr1$dir.State==estado)
    
    frametwo<- nrow(DatFr2)

    for (i in 1:frametwo) {if(DatFr2[i,3]=="Not Available"){DatFr2[i,3]<-NA}}
    var1<-data.frame(DatFr2$dir.Hospital.Name,DatFr2$dir.State,as.numeric(as.character(DatFr2[,3])))
    var2<- min(var1[,3],na.rm = TRUE)
    best <- as.character(sort.default(subset(var1,var1[,3]==var2)[,1])[1])
    print(best)
  }else{ stop("Estado no valido, intent otro")}
}
mejor("AL","peor")

