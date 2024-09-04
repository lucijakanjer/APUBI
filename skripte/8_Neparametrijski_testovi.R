### Primjena neparametrijskih statističkih testova bioloških podataka

# Wilcoxonov test
# Primjena Wilcoxonovog testa za usporedbu srednjih vrijednosti dviju grupa 
# kada podaci ne zadovoljavaju pretpostavke parametrijskih testova.

# Wilcoxonov test za usporedbu tjelesne mase između vrsta "Adelie" i "Chinstrap"
wilcox_test <- wilcox.test(body_mass_g ~ species, 
                           data = subset(penguins, species %in% c("Adelie", "Chinstrap")))
print(wilcox_test)

# Kruskal-Wallis test
# Primjena Kruskal-Wallis testa za usporedbu više grupa.

# Kruskal-Wallis test za usporedbu duljine peraja među vrstama pingvina
kruskal_test <- kruskal.test(flipper_length_mm ~ species, data = penguins)
print(kruskal_test)

# Zadaci
# 1. Provedite Wilcoxonov test za usporedbu duljine kljuna između mužjaka i ženki.
# 2. Provedite Kruskal-Wallis test za usporedbu tjelesne mase među vrstama pingvina.