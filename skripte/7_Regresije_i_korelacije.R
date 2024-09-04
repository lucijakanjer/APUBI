### Regresije i korelacije, linearni modeli bioloških podataka

# Korelacija između numeričkih varijabli

# Korelacija između duljine kljuna i duljine peraja
cor(penguins$bill_length_mm, penguins$flipper_length_mm, use = "complete.obs")

# Linearna regresija
# Primjena linearne regresije za modeliranje odnosa između dvije ili više varijabli.

# Linearni model za predikciju tjelesne mase na temelju duljine kljuna
linear_model <- lm(body_mass_g ~ bill_length_mm, data = penguins)
summary(linear_model)

# Zadaci
# 1. Ispitajte korelaciju između tjelesne mase i duljine peraja.
# 2. Kreirajte linearni model za predikciju tjelesne mase na temelju duljine peraja.