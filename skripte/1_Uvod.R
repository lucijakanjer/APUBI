# Uvod u R i RStudio
# ------------------

# 1. Osnovne aritmetičke operacije
a <- 5
b <- 3
zbroj <- a + b
razlika <- a - b
umnožak <- a * b
kvocijent <- a / b
potencija <- a^b

# Ispis rezultata
cat("Zbroj:", zbroj, "\n")
cat("Razlika:", razlika, "\n")
cat("Umnožak:", umnožak, "\n")
cat("Kvocijent:", kvocijent, "\n")
cat("Potencija:", potencija, "\n")

# 2. Kontrolne strukture
# if-else
x <- -2
if (x > 0) {
  cat("x je pozitivan broj\n")
} else {
  cat("x je negativan ili nula\n")
}

# for petlja
for (i in 1:5) {
  cat("Ovo je iteracija broj", i, "\n")
}

# while petlja
i <- 1
while (i <= 5) {
  cat("Ovo je iteracija broj", i, "\n")
  i <- i + 1
}

# 3. Funkcije za manipulaciju podacima
# Kreiranje vektora
vektor <- c(1, 2, 3, 4, 5)
cat("Vektor:", vektor, "\n")

# Sekvence i ponavljanja
sekvenca <- seq(1, 10, by = 2)
cat("Sekvenca:", sekvenca, "\n")

ponavljanja <- rep(1, times = 5)
cat("Ponavljanja:", ponavljanja, "\n")

# Podskupovi
podskup <- subset(vektor, vektor > 2)
cat("Podskup vektora gdje su elementi > 2:", podskup, "\n")

# 4. Instalacija dodatnih paketa
# Instalacija paketa 'ggplot2'
install.packages("ggplot2")

# Učitavanje paketa
library(ggplot2)

# Primjer korištenja ggplot2 za crtanje grafa s iris setom podataka
data(iris)
ggplot(data = iris, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point() +
  theme_minimal()

# Praktični zadaci
# ----------------
# 1. Izračunajte prosjek vektora c(5, 10, 15, 20)
vektor_zadatak <- c(5, 10, 15, 20)
prosjek <- mean(vektor_zadatak)
cat("Prosjek vektora je:", prosjek, "\n")

# 2. Instalirajte i učitajte paket 'dplyr', te koristite funkciju filter() za filtriranje podataka
install.packages("dplyr")
library(dplyr)
# Filtriranje iris podataka gdje je Species jednaka 'setosa'
filtrirani_podaci <- filter(iris, Species == 'setosa')
print(filtrirani_podaci)

# 3. Kreirajte for petlju koja ispisuje kvadrate brojeva od 1 do 10
for (i in 1:10) {
  cat("Kvadrat broja", i, "je", i^2, "\n")
}