
############################################################
# Joaquín  Carrascosa                                      #
# Gráficos por categoría y combinados                      #
# facet_grid  ; facet_wrap  y ggarrange() de ggpubr        #
############################################################

library(ggplot2)
library(ggpubr)
install.packages("ggpubr")
#data
data(iris)

vec <- sample(1:3, 150, replace=TRUE)
iris <- cbind(iris, tipo = vec)     # Add new column to data

#Gráfico base
?iris

rm(p)
p<- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species))+
  geom_point()

p

##Facet grid, (vertical ~ horizontal)

rm(p)
p<- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species))+
  geom_point()+
  facet_grid(. ~ Species)
p

#Con 2 variables
rm(p)
p<- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species))+
  geom_point()+
  facet_grid(tipo ~ Species)
p

#Escalas eje x e y | "free", "free_x", or "free_y"

rm(p)
p<- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species))+
  geom_point()+
  facet_grid(. ~ Species, scales="free")
p

#Facet Wrap (ncol y nrow)

rm(p)
p<- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species))+
  geom_point()+
  facet_wrap(Species ~ ., ncol=2)
p



#Combinar gráficos con ggarange

rm(g1)
g1<- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species))+
  geom_point()
g1

rm(g2)
g2<- ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Species))+
  geom_point()
g2

rm(g3)
g3<- ggplot(iris, aes(x=Petal.Length, fill=Species, alpha=0.6))+
  geom_density()+
  guides(alpha = FALSE)
g3

ggarrange(g1, g2, g3, common.legend = TRUE, ncol=2, nrow=2)


#__________________________________________________________________________
# Cargar librerías necesarias
library(ggplot2)
library(ggpubr)

# Explorar el dataset mpg
?mpg  # Ver la descripción del dataset
head(mpg)  # Ver las primeras filas

# ==============================================
# 1️⃣ Gráfico Base: Relación entre Cilindraje (displ) y Consumo en Carretera (hwy)
# ==============================================
p <- ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  labs(title = "Relación entre Cilindraje y Consumo en Carretera",
       x = "Cilindraje (displ)", y = "Millas por Galón en Carretera (hwy)")
p  # Mostrar gráfico base

# ==============================================
# 2️⃣ Uso de facet_grid() para separar datos en columnas por 'drv' (tracción)
# ==============================================
p_grid_col <- p + facet_grid(. ~ drv)  # Facetas en columnas
p_grid_col

# ==============================================
# 3️⃣ Uso de facet_grid() con dos variables (filas: 'drv', columnas: 'class')
# ==============================================
p_grid_2var <- p + facet_grid(drv ~ class)
p_grid_2var

# ==============================================
# 4️⃣ Uso de facet_wrap() para organizar facetas con una sola variable (class)
# ==============================================
p_wrap <- p + facet_wrap(~ class, ncol = 2)  # Organiza en 2 columnas
p_wrap

# ==============================================
# 5️⃣ Uso de escalas libres en facet_grid()
# ==============================================
p_free_scale <- p + facet_grid(. ~ drv, scales = "free")  # Ajusta escalas en cada faceta
p_free_scale

# ==============================================
# 6️⃣ Combinación de múltiples gráficos con ggarrange()
# ==============================================

# Gráfico 1: Relación entre cilindraje y consumo en carretera
g1 <- ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  labs(title = "Cilindraje vs Consumo en Carretera")

# Gráfico 2: Relación entre cilindraje y consumo en ciudad
g2 <- ggplot(mpg, aes(x = displ, y = cty, color = class)) +
  geom_point() +
  labs(title = "Cilindraje vs Consumo en Ciudad")

# Gráfico 3: Densidad del consumo en carretera según la clase del auto
g3 <- ggplot(mpg, aes(x = hwy, fill = class, alpha = 0.6)) +
  geom_density() +
  guides(alpha = FALSE) +
  labs(title = "Distribución de Consumo en Carretera")

# Combinar gráficos en una sola visualización
ggarrange(g1, g2, g3, common.legend = TRUE, ncol = 2, nrow = 2)

