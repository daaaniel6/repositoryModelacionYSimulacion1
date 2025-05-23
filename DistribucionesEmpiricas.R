datos <- c(1.2, 1.5, 2.1, 2.3, 2.7, 3.0)
hist(datos, breaks = c(1, 2, 3, 4), prob = TRUE, main = "Histograma")


densidad <- density(datos, bw = 0.5, kernel = "gaussian")
plot(densidad, main = "KDE")

ecdf_fun <- ecdf(datos)
plot(ecdf_fun, main = "CDF Empírica")


datos <- c(10, 20, 30, 40)
F_empirica <- ecdf(datos)
plot(F_empirica, main = "CDF Empírica", xlab = "Datos", ylab = "F(x)")

# Intervalos y conteos
intervalos <- c(0, 10, 20, 30)
conteos <- c(5, 10, 5)
N <- sum(conteos)

# Función manual
G <- function(x) {
  if (x < intervalos[1]) return(0)
  if (x >= intervalos[length(intervalos)]) return(1)
  for (i in 2:length(intervalos)) {
    if (x < intervalos[i]) {
      return(sum(conteos[1:(i-1)])/N + 
               (x - intervalos[i-1])/(intervalos[i] - intervalos[i-1]) * conteos[i]/N)
    }
  }
}

# Ejemplo
G(15)  # Devuelve 0.5



F_continua <- function(x, datos_ordenados) {
  n <- length(datos_ordenados)
  if (x < datos_ordenados[1]) return(0)
  if (x >= datos_ordenados[n]) return(1)
  for (i in 1:(n-1)) {
    if (x >= datos_ordenados[i] & x < datos_ordenados[i+1]) {
      return((i - 1)/(n - 1) + (x - datos_ordenados[i]) / ((n - 1) * (datos_ordenados[i+1] - datos_ordenados[i])))
    }
  }
}

# Ejemplo
x_vals <- seq(5, 35, by = 0.1)
y_vals <- sapply(x_vals, F_continua, datos_ordenados = sort(datos))

plot(x_vals, y_vals, type = "l", main = "CDF Continua (Lineal)")
