x <- rnorm(1000, mean = 100, sd = 15)  # Generar 1000 datos
hist(x, breaks = 30, main = "Distribución Normal N(100,15^2)")

#Parametro de hubicacion o desplazamiento
x <- seq(-5, 10, length=100)
y1 <- dnorm(x, mean=0, sd=1)  # N(0,1)
y2 <- dnorm(x, mean=3, sd=1)  # N(3,1)

plot(x, y1, type="l", col="blue", lwd=2, main="Efecto del Parámetro de Ubicación")
lines(x, y2, col="red", lwd=2)
legend("topright", legend=c("N(0,1)", "N(3,1)"), col=c("blue", "red"), lwd=2)


#Parámetro de Escala (β) en Distribuciones de Probabilidad
x <- seq(-10, 10, length=100)
y1 <- dnorm(x, mean=0, sd=1)  # N(0,1)
y2 <- dnorm(x, mean=0, sd=2)  # N(0,2)

plot(x, y1, type="l", col="blue", lwd=2, main="Efecto del Parámetro de Escala en N(0,σ^2)")
lines(x, y2, col="red", lwd=2)
legend("topright", legend=c("N(0,1)", "N(0,2)"), col=c("blue", "red"), lwd=2)

# Parámetro de Forma en la Distribución Weibull
x <- seq(0, 5, length=100)
y1 <- dweibull(x, shape=0.5)  # k=0.5
y2 <- dweibull(x, shape=1)    # k=1
y3 <- dweibull(x, shape=2)    # k=2

plot(x, y1, type="l", col="blue", lwd=2, main="Efecto del Parámetro de Forma en la Weibull")
lines(x, y2, col="red", lwd=2)
lines(x, y3, col="green", lwd=2)
legend("topright", legend=c("k=0.5", "k=1", "k=2"), col=c("blue", "red", "green"), lwd=2)

