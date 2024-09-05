###  Unos podataka u programsko okruženje R, struktura objekata

# Unos podataka u R
# Podatke možete unositi ručno ili iz različitih izvora, kao što su:
# tekstualne datoteke, CSV datoteke, Excel, baze podataka ili izravno s interneta.

# Ručni unos
# Kreiranje vektora
visine_biljaka <- c(10.5, 20.3, 30.1, 25.7, 15.2)  # visine biljaka u centimetrima
visine_biljaka

# Kreiranje data frame-a
data_frame_zivotinje <- data.frame(
  Vrsta = c("Ptica", "Sisavac", "Gmaz", "Vodozemac", "Riba"),
  Tezina = c(1.5, 25.3, 2.1, 0.5, 1.2),  # težina u kilogramima
  Duljina = c(25.4, 85.7, 50.3, 12.6, 30.1)  # duljina u centimetrima
)
data_frame_zivotinje  # ispis u konzoli
print(data_frame_zivotinje) # ispis u konzoli
View(data_frame_zivotinje) # vizualizacija tablice u novom listu

# Učitavanje podataka iz tekstualnih datoteka i CSV-a
# Kreirajte tekstualnu datoteku "biljke.txt" sa sljedećim sadržajem:
# Uzorak Visina Sirina  Vrsta
# Biljka1 10.5 12.3 maslacak
# Biljka2 20.3 22.5 jagoda
# Biljka3 30.1 28.4 tulipan
# Biljka4 25.7 26.1 kopriva
# Biljka5 15.2 14.7 trputac

# Učitavanje podataka iz tekstualne datoteke
data_txt <- read.table("biljke.txt", header = TRUE)
data_txt

# Učitavanje podataka iz CSV datoteke
# Kreirajte CSV datoteku "zivotinje.csv" sa sličnim sadržajem.
data_csv <- read.csv("zivotinje.csv", header = TRUE)
data_csv


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