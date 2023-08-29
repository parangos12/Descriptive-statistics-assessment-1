# 1. Importamos los datos a usar
Microemprendimientos_CH_2023 <- 
  readXL("C:/Users/USER/Desktop/Universidad de Antioquia/Semestre 3/Teoria de probabilidad y colas/Trabajo Descriptiva/Datos_Trab_Descriptiva.xlsx",
         rownames=FALSE, header=TRUE, na="", sheet="Hoja1", stringsAsFactors=TRUE)

#2. Eliminar datos categoricas de "888" y "999"
df <- data.frame(Microemprendimientos_CH_2023)
df_new<-df[df$f2_d!="888" & df$f2_d!="999",]

#3. Construir tabla de frecuenta para variables cuantitativas discretas
ages<- as.numeric(as.character(df_new$f2_d))

#3.1 Calcular rango.
min <- min(ages) 
max <- max(ages)
rangeAge <- max - min
lengthAges<-length(ages)
num_intervals <- round(1 + (3.32*log10(lengthAges)))
amplitude <-round(rangeAge/num_intervals) 

# 3.2 Verificar que amplitude*num_intervals=>rangeAge
print(amplitude*num_intervals>rangeAge)

# 3.2.1 No cumple, aumentamos amplitud a proximo entero.
amplitude=amplitude+1
print(amplitude*num_intervals>rangeAge)

#4.0 Construimos tabla.
TablaFrecs=function(x,k,A){
  L = min(x)+A*(0:k)
  x_cut = cut(ages,breaks=L,include.lowest = TRUE, right=FALSE)
  intervals = levels(x_cut)
  mc = (L[1]+L[2])/2+A*(0:(k-1))
  Fr.abs = as.vector(table(x_cut))
  Fr.rel = Fr.abs/length(x)
  Fr.cum.abs = cumsum(Fr.abs)
  Fr.cum.rel = cumsum(Fr.rel)
  tabla = data.frame("Intervalos"=intervals, "mi"=mc,"fi"= Fr.abs,"fRi"= Fr.rel,"fRi%"=Fr.rel*100,"Fi"=Fr.cum.abs,"FRi"= Fr.cum.rel,"FRi%"=Fr.cum.rel*100)
  tabla
}

frecuency_table<-TablaFrecs(x=ages,k=num_intervals,A=amplitude)

# Bibliografía https://rstudio-pubs-static.s3.amazonaws.com/855180_92c86485dceb49768301430c53df6668.html

