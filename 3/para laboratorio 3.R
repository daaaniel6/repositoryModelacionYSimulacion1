#variables categoricas y continuas
library(ggplot2)
?mtcars
nrow(mtcars)
ncol(mtcars)
#creando un objeto en ggplot
p <- ggplot(data = mtcars)
#crear grafica de puntos
p1 <- p + geom_point(aes(x=disp,y=mpg))
#crear grafica de lineas
p2 <- p+geom_line(aes(x=disp,y=mpg))
#crear grafica de barras
p3 <- p+geom_bar(aes(x=am))
#crear grafica de cajas
p4 <- p+geom_boxplot(aes(x=factor(gear),y=mpg))
#agregar texto
p5 <- p1+geom_text(x=300, y=20, label="punto de inflexion")

show(p1)
show(p2)
show(p3)
show(p4)
show(p5)

ggplot(data = mtcars) + geom_point(aes(x=disp,y=mpg))

#---------------nuevo---------------------------------------
p6 <- p + geom_bar(aes(x = factor(am), y = ..prop.., group = 1), stat = "count") +
  labs(title = "Proporción de Autos según Tipo de Transmisión", x = "Tipo de Transmisión", y = "Proporción")
show(p6)

p7 <- p + geom_histogram(aes(x = mpg), bins = 10, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribución de Millas por Galón", x = "MPG", y = "Frecuencia")
show(p7)


p8 <- p + geom_density(aes(x = mpg), fill = "red", alpha = 0.5) +
  labs(title = "Densidad de MPG", x = "MPG", y = "Densidad")
show(p8)


p9 <- p + geom_point(aes(x = hp, y = mpg, color = factor(cyl), size = wt)) +
  labs(title = "Relación entre Fuerza y Consumo", x = "Caballos de fueza", y = "MPG") +
  scale_color_manual(values = c("red", "blue", "green"))
show(p9)


p10 <- p + geom_violin(aes(x = factor(gear), y = mpg, fill = factor(gear)), alpha = 0.7) +
  labs(title = "Distribución de MPG según Número de Marchas", x = "Número de Marchas", y = "MPG")
show(p10)


p11 <- p + geom_line(aes(x = hp, y = mpg, color = factor(cyl)), size = 1) +
  labs(title = "Evolución del Consumo con Fueza", x = "Caballos de fuerza", y = "MPG")
show(p11)

ggplot(mtcars, aes(x = factor(gear), y = mpg)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Boxplot: Distribución de MPG por Número de Marchas", x = "Número de Marchas", y = "Millas por Galón (MPG)")

ggplot(mtcars, aes(x = factor(gear), y = mpg, fill = factor(gear))) +
  geom_violin(alpha = 0.7) +
  labs(title = "Violin Plot: Distribución de MPG por Número de Marchas", x = "Número de Marchas", y = "Millas por Galón (MPG)")
