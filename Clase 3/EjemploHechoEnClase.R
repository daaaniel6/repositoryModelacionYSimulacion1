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


