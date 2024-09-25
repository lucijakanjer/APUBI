library(tidyverse)

# Učitavanje paketa s podacima o Palmer pingvinima
library(palmerpenguins)

# Učitavanje podataka u R okruženje
data("penguins")

View(penguins)

# Odabir (selektiranje) varijabli od interesa
penguins %>%
  select(species, island, body_mass_g)

# Spremanje novog data frame-a kao novi objekt "adelie"
adelie <- penguins %>%
  select(species, island, body_mass_g)

# Provjera tipa i strukture objekta
str(adelie)

# filtriramo varijablu "species" da sadržava samo vrijednosti "Adelie"
adelie <- penguins %>%
  select(species, island, body_mass_g) %>%
  filter(species == "Adelie")

# Kreiramo novu varijablu "body_mass_kg" tako da staru varijablu "body_mass_g" podijelimo s 1000
adelie <- penguins %>%
  select(species, island, body_mass_g) %>%
  filter(species == "Adelie") %>%
  mutate(body_mass_kg = body_mass_g/1000)

# Ako želimo da se rezultati prikazuju po otocima, moramo koristiti naredbu group_by()
adelie <- penguins %>%
  select(species, island, body_mass_g) %>%
  filter(species == "Adelie") %>%
  mutate(body_mass_kg = body_mass_g/1000) %>%
  group_by(island)

# Kako bi se prikazao prosjek moramo koristiti naredbu summarise()
adelie_result <- penguins %>%
  select(species, island, body_mass_g) %>%
  filter(species == "Adelie") %>%
  mutate(body_mass_kg = body_mass_g/1000) %>%
  group_by(island) %>%
  summarise(average_mass = mean(body_mass_kg))

print(adelie_result)
View(adelie_result)

# Uklanjanje nedostajućih vrijednosti
adelie_result <- penguins %>%
  select(species, island, body_mass_g) %>%
  filter(species == "Adelie") %>%
  mutate(body_mass_kg = body_mass_g/1000) %>%
  na.omit() %>%
  group_by(island) %>%
  summarise(average_mass = mean(body_mass_kg))

print(adelie_result)


# zadatak

gentoo <- penguins %>%
  select(species, sex, body_mass_g) %>%
  filter(species == "Gentoo") %>%
  mutate(body_mass_kg = body_mass_g/1000)
  

gentoo_result <- penguins %>%
  select(species, sex, body_mass_g) %>%
  filter(species == "Gentoo") %>%
  mutate(body_mass_kg = body_mass_g/1000) %>%
  na.omit() %>%
  group_by(sex) %>%
  summarise(average_mass = mean(body_mass_kg))

print(gentoo_result)
