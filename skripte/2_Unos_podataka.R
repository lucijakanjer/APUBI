###  Unos podataka u programsko okruženje R, struktura objekata

# Unos podataka u R
# Podatke možete unositi ručno ili iz različitih izvora, kao što su:
# tekstualne datoteke, CSV datoteke, Excel, baze podataka ili izravno s interneta.

# ------------------------------------------------
### 1. Struktura osnovnih objekata u R
# 1.1 Kreiranje varijabli
# Varijable su osnovni objekti u R-u.
a <- 5            # integer - cijeli broj, dodati "L"
x <- 3.14         # numeric - decimalni broj (realni)
y <- "DNA"        # character - tekst/string
z <- TRUE         # logical- logička vrijednost (TRUE/FALSE)

# Provjera tipa podataka
class(a)

# 1.2 Kreiranje vektora
# Vektor je niz elemenata iste vrste (npr. svi brojevi ili svi stringovi).
geni <- c("BRCA1", "TP53", "MYC")  # vektor gena
duljine <- c(1863, 1179, 1584)     # vektor duljina gena u parovima baza (bp)

# 1.3 Kreiranje matrica
# Matrica je 2D struktura podataka iste vrste (redovi x stupci).
# Primjer: Matrica ekspresije gena
ekspresija <- matrix(c(2.1, 3.5, 5.0, 1.8, 4.3, 6.2), nrow = 2, byrow = TRUE)
rownames(ekspresija) <- c("Uzorak1", "Uzorak2")
colnames(ekspresija) <- c("BRCA1", "TP53", "MYC")
print(ekspresija)

# 1.4 Kreiranje data frame-a
geni_df <- data.frame(
  Gen = c("BRCA1", "TP53", "MYC"),
  Duljina_bp = c(1863, 1179, 1584),
  Funkcija = c("tumor suppressor", "tumor suppressor", "oncogene")
)
geni_df  # ispis u konzoli
print(geni_df) # ispis u konzoli
View(geni_df) # vizualizacija tablice u novom listu

# Biološki zadatak: Kreirajmo data frame koji sadrži 3 gena s pripadajućim duljinama i njihovom funkcijom.
# Zadatak: Dodajte još jedan gen u data frame s imenom "EGFR", duljinom 1700 bp i funkcijom "Oncogene".
novi_gen <- data.frame(Gen = "EGFR", Duljina_bp = 1700, Funkcija = "oncogene")
geni_df <- rbind(geni_df, novi_gen)

# Ispis ažuriranog data frame-a
print(geni_df)
View(geni_df)

# ----------------------------------------------
### 2. Unos podataka u R

# 2.1 Provjeravanje i postavljanje radnog direktorija
# Provjera trenutnog radnog direktorija
getwd()

# Postavljanje novog radnog direktorija (potrebno navesti put)
# Primjer (Windows): setwd("C:/Users/ImeRacunala/Documents")
# Primjer (Mac/Linux): setwd("/Users/ImeRacunala/Documents")
setwd("C:/Users/lucij/Documents")

# 2.2 Učitavanje podataka iz tekstualnih datoteka
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

# 2.3 Učitavanje podataka iz CSV datoteke
# Kreirajte CSV datoteku "zivotinje.csv" sa sličnim sadržajem.
data_csv <- read.csv("zivotinje.csv", header = TRUE)
data_csv


# 2.4 Učitavanje podataka iz Excel datoteka
# Instalacija paketa "readxl" ako nije već instaliran
# install.packages("readxl")
library(readxl)
palmerpenguins_original <- read_excel() # nadopisati
View(palmerpenguins_original)

# 2.5 Učitavanje podataka iz paketa
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
# Kreirajte vektor s 5 gena i njihovim duljinama (u baznim parovima).
# Učitajte CSV datoteku koja sadrži podatke o ekspresiji gena.
# Ispitajte strukturu učitanog data frame-a koristeći funkciju str().
# Dodajte novi redak u data frame s informacijama o novom genu.
# Ispisujte prva 3 retka i zadnja 3 retka učitanog data frame-a koristeći funkcije head() i tail().