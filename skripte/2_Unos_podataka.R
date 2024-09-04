###  Unos podataka u programsko okruženje R, struktura objekata

# Unos podataka u R
# Podatke možete unositi iz različitih izvora, kao što su CSV datoteke, 
# Excel, baze podataka ili izravno s interneta.

# Unos podataka iz CSV datoteke
read.csv() # nadopisati

# Unos podataka iz Ecxcela
library(readxl)
palmerpenguins_original <- read_excel() # nadopisati
View(palmerpenguins_original)

# Učitavanje podataka iz paketa
data("penguins")

# Pregled prvih nekoliko redaka podataka
head(penguins)

# Struktura objekata u R-u
# Tipovi podataka
str(penguins)

# Pristupanje specifičnim stupcima i redovima
vrsta <- penguins$species # stupac
prvi_redak <- penguins[1, ] # redak

# Zadaci
# Učitajte podatke o pingvinima i provjerite strukturu podataka.
# Pristupite kolonama species i island te ispišite prvi redak podataka.