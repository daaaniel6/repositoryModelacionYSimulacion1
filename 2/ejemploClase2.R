
nrow(mpg)
ncol(mpg)
#cargar la libreria ggplot2
library(ggplot2)

  #crear un objeto de ggplot
p<-ggplot (data=mtcars)
    #crear un grafico de puntos
p1<-p+geom_point (aes(x=disp, y=mpg))
      #crear funcion geom
p2<-p+geom_line(aes (x=disp, y=mpg))
      #crear grafico de barras de mpg como variable
p3<-p+geom_bar (aes (x=mpg))
        #crear un boxplot de mpg
p4<-p+geom_boxplot (aes (x=factor (gear), y=mpg) )
      #escribir texto en nuestra grafica de puntos
p5<-p1+geom_text(x=200, y=25, label="scatter plot")
show (p)
show(p1)
show (p2)
show(p3)
show(p4)
show(p5)

#otra forma de hacerlo 
ggplot(data = mpg) + geom_point(mapping = aes(x = `model year`, y = cylinders))

#que son las variables categoricas y  continuas

