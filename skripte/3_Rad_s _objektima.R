### Rad s objektima i podacima te definiranje bioloških varijabli

# Manipulacija objektima u R-u

# Filtriranje podataka
Adelie_penguins <- subset(penguins, species == "Adelie")

# Sortiranje podataka
sorted_penguins <- penguins[order(penguins$bill_length_mm), ]

# Grupiranje podataka prema vrsti
library(dplyr)
grouped_data <- penguins %>% 
  group_by(species) %>% 
  summarise(mean_bill_length = mean(bill_length_mm, na.rm = TRUE))

# Definiranje bioloških varijabl
# Kreiranje nove varijable koja označava veličinu kljuna
penguins$bill_size <- ifelse(penguins$bill_length_mm > 40, "large", "small")

# Zadaci
# Filtrirajte podatke za vrstu "Chinstrap" i izračunajte prosječnu duljinu kljuna.
# Kreirajte novu varijablu koja kategorizira pingvine prema težini.