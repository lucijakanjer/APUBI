### Uvod u rad u programskom okruženju R i osnovne funkcije, 
# instaliranje programskih paketa

# Pokretanje R konzole u RStudiju
# izvršavanje naredbe iz skripre u konzolu: Ctrl + Enter
print("Dobrodošli u R!")

# Definiranje varijabli
a <- 5
b = 3 
print (a + b)

visina <- 170
godina = 1995
print(visina)
print(godina)

# Rad s osnovnim matematičkim operacijama
zbroj <- 5 + 3
print(zbroj)
zbroj

umnožak <- 4 * 7
umnožak 

prosjek <- mean(c(1, 2, 3, 4, 5))
print(prosjek)

# Provjeravanje radnog direktorija (working directory)
getwd()

# Postavljanje radnog direktorija
setwd("C:/Users/lucij/Documents/APUBI")

# učitavanje tablice s podacima
read.csv("palmerpenguins_extended.csv", header = TRUE)

# Instalacija paketa
install.packages("palmerpenguins")

# Učitaj paket u radno okruženje
library(palmerpenguins)

# Izrada grafa
library(ggplot2)
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 2) +
  scale_color_manual(values = c("darkorange","darkorchid","cyan4"))


# Zadaci
# 1. Instalirajte i učitajte paket RColorBrewer.
# 2. Kreirajte varijable za visinu 3 različite životinje.
# 3. Izračunajte prosjek visine životinja koje ste upisali.