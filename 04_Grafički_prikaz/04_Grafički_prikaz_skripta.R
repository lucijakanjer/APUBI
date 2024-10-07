# Analize podataka u biološkim istraživanjima - praktikum 2024
# Lucija Kanjer lucija.kanjer@biol.pmf.hr

##############################################################

# 4. Grafički prikaz bioloških podataka i testiranje razdiobe podataka u R-u

# Uključene su sve korištenje naredbe, ALI NEKE SU NEPOTPUNE ILI SADRŽE NAMJERNE POGREŠKE:
# Dovršite naredbe i također dodajte komentare za sebe (koristite # za komentiranje)
#
# IZVRŠAVANJE NAREDBI: ctrl + Enter 
#
#############################################################

# Podsjetimo se!
# Pregled trenutnog radnog direktorija
getwd()

# Postavljanje novog radnog direktorija
setwd("C:/Users/Hrvoje/Documents/APUBI/04_Grafički_prikaz")

# Učitavanje potrebnog paketa za čitanje Excel tablica
library(readxl)

# Učitavanje podataka iz Excel tablice u objekt penguins
penguins <- read_excel("palmerpenguins_original.xlsx")

# Pregled tablice
View(penguins) # ili klik na objekt u environmentu