### Primjeri osnovnih statističkih analiza kategoričkih i numeričkih varijabli 
### u biološkim istraživanjima u R-u

# Osnovne statističke analize kategoričkih varijabli
# Analiza učestalosti kategoričkih varijabli

# Učestalost vrsta pingvina po otocima
table(penguins$island, penguins$species)

# Omjer spolova
prop.table(table(penguins$sex))

#  Osnovne statističke analize numeričkih varijabli
# Izračun osnovnih statistika za numeričke varijable.

# Osnovne statističke mjere za duljinu kljuna
summary(penguins$bill_length_mm)
var(penguins$bill_length_mm, na.rm = TRUE)
sd(penguins$bill_length_mm, na.rm = TRUE)

# Zadaci
# 1. Ispitajte distribuciju pingvina prema spolovima.
# 2. Izračunajte osnovne statističke mjere (srednja vrijednost, medijan, varijanca)
# za tjelesnu masu pingvina.