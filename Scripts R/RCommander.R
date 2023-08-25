Microemprendimientos_CH_2023 <- 
  readXL("C:/Users/USER/Desktop/Universidad de Antioquia/Semestre 3/Teoria de probabilidad y colas/Trabajo Descriptiva/Datos_Trab_Descriptiva.xlsx",
   rownames=FALSE, header=TRUE, na="", sheet="Hoja1", stringsAsFactors=TRUE)
Microemprendimientos_CH_2023$f2_h<-ifelse(Microemprendimientos_CH_2023$f2_h==88,"No sabe",Microemprendimientos_CH_2023$f2_h)
Microemprendimientos_CH_2023$f2_h<-ifelse(Microemprendimientos_CH_2023$f2_h==99,"No responde",Microemprendimientos_CH_2023$f2_h)
Microemprendimientos_CH_2023$f2_i<-ifelse(Microemprendimientos_CH_2023$f2_i==86,"Trabaja de manera ocasional",Microemprendimientos_CH_2023$f2_i)
Microemprendimientos_CH_2023$f2_i<-ifelse(Microemprendimientos_CH_2023$f2_i==87,"No tiene horario regular",Microemprendimientos_CH_2023$f2_i)
Microemprendimientos_CH_2023$f2_i<-ifelse(Microemprendimientos_CH_2023$f2_i==88,"No sabe",Microemprendimientos_CH_2023$f2_i)
Microemprendimientos_CH_2023$f2_i<-ifelse(Microemprendimientos_CH_2023$f2_i==99,"No responde",Microemprendimientos_CH_2023$f2_i)
Microemprendimientos_CH_2023$f2_h <- factor(Microemprendimientos_CH_2023$f2_h)
Microemprendimientos_CH_2023$f2_i <- factor(Microemprendimientos_CH_2023$f2_i)
Microemprendimientos_CH_2023 <- within(Microemprendimientos_CH_2023, {
  f2_b <- factor(f2_b, labels=c('Si','No'))
})

Microemprendimientos_CH_2023 <- within(Microemprendimientos_CH_2023, {
  f2_c <- factor(f2_c, labels=c('Hombre','Mujer'))
})
Microemprendimientos_CH_2023 <- within(Microemprendimientos_CH_2023, {
  f2_e <- factor(f2_e, labels=c('Ninguno','Primaria','Secundaria',
  'Superior(Técnica, Universitaria o postítulo)','No sabe'))
})
Microemprendimientos_CH_2023 <- within(Microemprendimientos_CH_2023, {
  f2_f <- factor(f2_f, labels=c('Trabajador asalariado',
  'Socios trabajadores','Familiar sin pago','Aprendices o practicantes',
  'No sabe','No responde'))
})
Microemprendimientos_CH_2023 <- within(Microemprendimientos_CH_2023, {
  f2_g <- factor(f2_g, labels=c('Acuerdo de palabra','Escrito',
  'Escrito y firmado ante notario','No sabe'))
})
Microemprendimientos_CH_2023 <- within(Microemprendimientos_CH_2023, {
  f2_d <- as.factor(f2_d)
})

summary(Microemprendimientos_CH_2023)

