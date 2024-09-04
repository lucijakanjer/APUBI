### Uvod u rad u programskom okruženju R i osnovne funkcije, instaliranje programskih paketa

# Pokretanje R konzole u RStudio
print("Dobrodošli u R!")

# Instalacija paketa
install.packages("palmerpenguins")

# Učitaj paket u radno okruženje
library(palmerpenguins)

# Definiranje varijabli
a <- 8
b = 10
print(a)
print(b)

# Rad s osnovnim matematičkim operacijama
zbroj <- 5 + 3
umnožak <- 4 * 7
prosjek <- mean(c(1, 2, 3, 4, 5))
print(prosjek)

# Zadaci
# Instalirajte i učitajte paket tidyverse.
# Kreirajte varijable za zbroj i umnožak dvaju brojeva.
# Izračunajte prosjek brojeva od 1 do 10.