# DASL
# Correlación
#
library(repmis)
# Descargar datos de dropbox
erupciones <- source_data("https://www.dropbox.com/s/liir6sil7hkqlxs/erupciones.csv?dl=1")

plot(erupciones$waiting, erupciones$eruptions, xlab = "Tiempo de espera entre erupciones (min)", 
     ylab = "Duración de las erupciones (min)", pch = 19)

# Realizar las estadísticas descriptivas de ambas variables (media, desviación estándar y varianza)

# Promedio (Media) de las variables
mean(erupciones$eruptions)
mean(erupciones$waiting)

# Desviación estándar
sd(erupciones$eruptions)
sd(erupciones$waiting)

# Varianza
var(erupciones$eruptions)
var(erupciones$waiting)

range(erupciones$eruptions)
range(erupciones$waiting)

boxplot(erupciones$eruptions)
boxplot(erupciones$waiting)

# Establecer la Hipótesis nula
# H0 = No hay correlación entre el tiempo de espera entre erupciones y la Duración de las erupciones

# Establecer la Hipótesis alternativa
# H1 = Si hay correlación entre las variables

# Función de correlación cor.test
cor.test(erupciones$eruptions, erupciones$waiting)

# Coeficiente de correlación es alto (0.9008112), si hay una correlación entre el tiempo de espera y la duración
# Valor de p menor a la referencia, es significativa, se acepta la hipótesis alternativa


# Canopy ------------------------------------------------------------------

copa <- read.csv("Scripts/canopy_short.csv", header= T)

# Convertir a factor la variable forest
copa$Forest <- as.factor(copa$Forest)

# Identificación de tendencias

plot(copa$Cnpy, copa$LAI4)
# A mayor apertura de copa, menor índice foliar, asociación negativa

plot(copa$Cnpy, copa$GLI)
#Entre más abierta esté la copa, mayor luz llegará al suelo, asociación positiva

# Correlaciones 
cor.test(copa$Cnpy, copa$LAI4)
# De acuerdo al valor de r (-0.833416), es una correlación negativa, a medida que aumenta la apertura de la copa, se va a reducir la captación de fotosintesis, de acuerdo al valor de p es altamente significativa

cor.test(copa$Cnpy, copa$GLI)
# Es positiva, aunque es baja ( r de 0.5457512), es significativa de acuerdo con el valor de p

# Las dos correlaciones son significativas (p-value)