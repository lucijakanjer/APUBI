#### Grafički prikaz bioloških podataka i testiranje razdiobe podataka

# Kreiranje scatterplot-a
library(ggplot2)
ggplot(penguins, aes(x = bill_length_mm, y = flipper_length_mm, color = species)) +
  geom_point() +
  labs(title = "Scatterplot duljine kljuna i duljine peraja")

# Testiranje normalnosti podataka
shapiro.test(penguins$bill_length_mm)

# Histogram za vizualizaciju razdiobe
ggplot(penguins, aes(x = bill_length_mm)) +
  geom_histogram(binwidth = 2, fill = "blue", color = "black") +
  labs(title = "Histogram duljine kljuna")

# Grafički prikaz kategoričke varijable

# Grafički prikaz numeričke varijable

# Grafički prikaz odnosa 2 kategoričke varijable

# Grafički prikaz odnosa 2 numeričke varijable

# Grafički prikaz odnosa kategoričke i numeričke varijable

# Zadaci
# Kreirajte scatterplot za odnos između tjelesne mase i duljine peraja.
# Testirajte normalnost distribucije duljine kljuna.
