data <- read.csv("Estudiantes.csv")
mean(data$Edad)
sum(data$Edad)
str(data)
summary(data)
table(data$Genero)

data$Mayor22 <-  data$Edad > 25
write.table(data, "nombre.csv", quote= FALSE,  row.names=FALSE)
