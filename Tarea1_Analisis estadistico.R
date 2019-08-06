Adela García
#05/08/2019
#Análisis Estadístico


# Importado excel ---------------------------------------------------------

DB_conjunto <- read.csv("C:/MCF202-2019/Datos/cuadro1.csv",
                        header = T)

# Alturas -----------------------------------------------------------------

H.mean <- subset(DB_conjunto, altura <= mean(altura))
head(H.mean)

H.16 <- subset(DB_conjunto, altura <  16.5)
head(H.16)


# Vecinos -----------------------------------------------------------------

vecinos3 <- subset(DB_conjunto, vecinos <= 3)
head(vecinos3)

vecinos4 <- subset(DB_conjunto, vecinos > 4)
head(vecinos4)

# Diametro ----------------------------------------------------------------

DBH.media <- subset(DB_conjunto, diametro < mean(diametro))
head(DBH.media)

DBH.16 <- subset(DB_conjunto, diametro > 16)
head(DBH.16)

# Especie -----------------------------------------------------------------

especiecedro <- DB_conjunto[(DB_conjunto$especie == "C"),] 
especierestante <- DB_conjunto[!(DB_conjunto$especie == "C"),]

DCedro16.9 <- subset(especiecedro, diametro <= 16.9)
Acedro18.5 <- subset(especiecedro, altura > 18.5)

# Visualización de datos --------------------------------------------------


hist(DB_conjunto$altura)
hist(H.16$altura)

hist(DB_conjunto$vecinos)
hist(vecinos3$vecinos)
hist(vecinos4$vecinos)

hist(DB_conjunto$diametro)
hist(DBH.media$diametro)
hist(DBH.16$diametro)


# Estadistica básica ------------------------------------------------------

##Altura
mean(DB_conjunto$altura)
sd(DB_conjunto$altura)

mean(H.media$altura)
sd(H.media$altura)

mean(H.16$altura)
sd(H.16$altura)

##Vecinos
mean(DB_conjunto$vecinos)
sd(DB_conjunto$vecinos)

mean(vecinos3$vecinos)
sd(vecinos3$vecinos)

mean(vecinos4$vecinos)
sd(vecinos4$vecinos)

##Diámetro
mean(DB_conjunto$diametro)
sd(DB_conjunto$diametro)

mean(DBH.media$diametro)
sd(DBH.media$diametro)

mean(DBH.16$diametro)
sd(DBH.16$diametro)

