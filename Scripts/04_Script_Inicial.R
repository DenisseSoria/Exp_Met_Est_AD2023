
# ANOVA

# Datos diámetro en Chihuahua

library(repmis)
Diam <- source_data(https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1)

localidad <- read.csv("Scripts/localidades.csv", header =T)

boxplot(localidad$DAP ~ localidad$Paraje,
        col = "lightgreen")

# Evisten diferencias y se le atribuyen a los sitios, o solo es muy variable la especie en ese lugar

shapiro.test(localidad$DAP)
bartlett.test(localidad$DAP ~ localidad$Paraje)

loc.aov <- aov(localidad$DAP ~ localidad$Paraje)
summary(loc.aov)

TukeyHSD(loc.aov)

plot(TukeyHSD(loc.aov))

tapply(localidad$DAP, localidad$Paraje, mean)
