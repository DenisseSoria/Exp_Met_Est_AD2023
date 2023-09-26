# DASL
# 1722669
# 26/09/2023

# Base de datos en R

# Conjunto I

x1 <- c(10,8,13,9,11,14,6,4,12,7,5)
y1 <- c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)

DB1 <- data.frame(x1,y1)
mean (DB1$x1) ; var(DB1$x1)
mean (DB1$y1) ; var(DB1$y1)
cor.test(DB1$x1, DB1$y1)

plot(DB1$x1, DB1$y1,
     col = "green",
     pch = 20,
     xlab = "Valor de x",
     ylab = "Valor de y")
text(6,10,"Base de Datos 1")
     
DB1.lm <- lm(DB1$y1 ~ DB1$x1)
DB1.lm
summary(DB1.lm)
DB1.lm$fitted.values
DB1.lm$coefficients

DB1$Ajustados <- round(DB1.lm$fitted.values, 2)
DB1$ForAjus <- 3.0 + 0.5*DB1$x1

# Agregar la línea de tendencia central con la función abline
plot(DB1$x1, DB1$y1,
     col = "green",
     pch = 20,
     xlab = "Valor de x",
     ylab = "Valor de y")
text(6,10,"Base de Datos 1")
abline(DB1.lm, col = "red")

DB1.lm$residuals
sum(DB1.lm$residuals)

# Conjunto III 

x3 <- c(10,8,13,9,11,14,6,4,12,7,5)
y3 <- c(7.46,6.77, 12.74, 7.11, 7.81, 8.84, 6.08, 5.39, 8.15, 6.42, 5.73)

DB3 <- data.frame(x3,y3)
mean(DB3$x3) ; var(DB3$x3)
mean(DB3$y3) ; var(DB3$y3)
cor.test(DB3$x3, DB3$y3)

plot (DB3$x3, DB3$y3,
     col = "blue",
     pch = 20,
     xlab = "Valor de x",
     ylab = "Valor de y")
text(6,10,"Base de Datos 3")

DB3.lm <- lm(DB3$y3 ~ DB3$x3)
DB3.lm
summary(DB3.lm)
DB3.lm$fitted.values
DB3.lm$coefficients

DB3$Ajustados <- round(DB3.lm$fitted.values, 2)
DB3$ForAjus <- 3.0 + 0.49*DB3$x1

# Agregar la línea de tendencia central con la función abline
plot (DB3$x3, DB3$y3,
      col = "blue",
      pch = 20,
      xlab = "Valor de x",
      ylab = "Valor de y")
text(6,10,"Base de Datos 3")
abline(DB3.lm, col = "red")


DB3.lm$residuals
sum(DB3.lm$residuals)
