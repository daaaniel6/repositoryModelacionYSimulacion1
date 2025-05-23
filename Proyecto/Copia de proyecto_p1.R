# proyecto_p1.R
# Nombre (Apellido, Nombre): 
# Carné: 

# Cargue la librería dplyr para modificar data frames:
library(dplyr)


# 1) Cargue los datos 
install.packages("nycflights13")
library(nycflights13)

# ---------------------------------------------------------------------
# 2) Inspeccione los datos 
data(package = "nycflights13")
airlines
airports
flights
planes
weather

#¿Qué tipo de datos es cada variable?


#¿Cuál es el tamaño total de cada data frame?



#¿Cuáles son los límites de cada período de observación (por ejemplo, qué período de tiempo abarcan las observaciones en estos data frames)?


#¿Alguna de las variables tiene valores perdidos y, de ser así, cuáles tienen más valores NA que otras? ¿Por qué podría ser ese el caso?


# --------------------------------------------------------------------
# 3) Responda preguntas sobre los datos

# a) ---------------
# ¿Cuántos vuelos desde los aeropuertos de Nueva York en 2013 tuvieron un retraso de llegada de dos
# o más horas?



# b) ----------------
# ¿Cuántos vuelos desde los aeropuertos de Nueva York en 2013 partieron en el semestre de otoño (
# es decir, los meses de agosto a diciembre, inclusive)?



# c) ----------------
# ¿Cuántos vuelos desde los aeropuertos de Nueva York en 2013 llegaron más de dos horas
# de retraso a sus destinos, pero no salieron tarde de un aeropuerto de Nueva York?


# d) ----------------
# ¿Cuántos vuelos desde los aeropuertos de Nueva York en 2013 fueron operados por
# las aerolíneas United, American o Delta?



# e) ----------------
# Enumere las 3 aerolíneas principales (por nombre, no por código de la aerolínea) que tuvieron el
# tiempo de retraso más alto de cualquier vuelo que salió de un aeropuerto de Nueva York en 2013.



# f)----------------
# ¿Cuántos vuelos desde los aeropuertos de Nueva York en 2013 volaron a los 3 principales
# aeropuertos del área de DC: Reagan National, Dulles o BWI?



# g)----------------
# ¿Cuál es el año de fabricación y el número de cola del avión más antiguo que
# alguna aerolínea utilizó en 2013 para volar desde los aeropuertos de Nueva York, y qué aerolínea
# operaba ese avión?


# h) 
# Usando el data frame `flights`, calcule una nueva variable ` velocidad` (en millas por
# hora) usando las variables `air_time` y` distance`. Para el vuelo más rápido
# en el conjunto de datos, ¿cuál fue su velocidad y cuáles fueron los códigos de aeropuerto 
# de origen y destino?



# i)----------------
# Usando el data frame `flights`, calcule una nueva variable` cambio_tiempo_vuelo` (en
# minutos) que es igual a la cantidad de tiempo perdido o recuperado
# durante el vuelo. El tiempo "perdido" es menor que 0 y refleja un tiempo de vuelo
# que fue _más largo_ de lo programado, mientras que el tiempo "recuperado" es mayor que 0 y
# refleja un tiempo de vuelo que fue _más rápido_ de lo programado. Para el vuelo que
# tomó más tiempo durante su vuelo, cuánto tiempo se hizo (en
# minutos) y cuáles fueron los códigos de aeropuerto de origen y destino?



# j) ----------------
# De todos los vuelos en 2013 que partieron de los aeropuertos de Nueva York, enumere los 3 destinos
# principales (nombres de aeropuerto, no códigos de aeropuerto) con el mayor retraso
# medio de llegada.


# k) ----------------
# Utilice el data frame `flights` para crear un nuevo data frame de resumen llamado
# `resumenRetrasoDiario` que contiene las siguientes variables para cada día en
# 2013:
# -retrMedioSalida: el retraso medio de salida (en minutos)
# - numVuelosRetrasados: el número total de vuelos retrasados
# Guarde este archivo en su carpeta de "datos" como "resumenRetrasoDiario.csv"



# l) ----------------

# Con el data frame resumenRetrasoDiario que creó en el inciso k), 
# responda las siguientes dos preguntas:
#  - Encuentre el día de 2013 con el mayor número de vuelos retrasados. 
# Ese día, ¿cuántos vuelos se retrasaron y cuál fue el tiempo medio de retraso (en minutos)?


#  - Encuentre el día de 2013 con el mayor retraso medio de salida (en minutos).
# Ese día, ¿cuántos vuelos se retrasaron y cuál fue el tiempo medio de retraso (en minutos)?

