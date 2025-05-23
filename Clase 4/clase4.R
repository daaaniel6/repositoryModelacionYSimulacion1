library(ggplot2)
library(ggpubr)


?mpg
head(mpg)

p <- ggplot(mpg, aes(x= displ, y=hwy, color=class)) + 
  geom_point() + 
  labs(title = "Relacion entre cilindraje y consumo en carretera", 
       x="Cilindraje", y="Millas por galon en carretera")

p


#Facetas en columanas
p_grid_col <-  p + facet_grid( . ~ drv)
p_grid_col

#Facetas en Filas y columnas
p_grid2 <- p + facet_grid(drv ~ class)
p_grid2



#Facetas wrap

p_wrap <- p + facet_wrap(~class, ncol = 3)
p_wrap

#Libre de escalas
#Facetas en columanas
p_grid_col <-  p + facet_grid( . ~ drv)
p_grid_col

p_grid_col_free <-  p + facet_grid( . ~ drv, scales = "free")
p_grid_col_free

p1 <-  ggplot(mpg, aes(x=hwy, fill = class)) +geom_density()
p1

ggarrange(p,p1, ncol = 2)
