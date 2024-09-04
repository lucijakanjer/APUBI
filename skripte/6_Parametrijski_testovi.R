### Primjena parametrijskih statističkih testova bioloških podataka

# T-test
# Primjena t-testa za usporedbu duljine kljuna između vrsta "Adelie" i "Chinstrap"
t_test_result <- t.test(bill_length_mm ~ species, 
                        data = subset(penguins, 
                                      species %in% c("Adelie", "Chinstrap")))
print(t_test_result)

# ANOVA za usporedbu više grupa
# Primjena jednosmjerne ANOVA-e za usporedbu srednjih vrijednosti više grupa.
# Primjena ANOVA-e za usporedbu tjelesne mase među vrstama pingvina
anova_result <- aov(body_mass_g ~ species, data = penguins)
summary(anova_result)

# Zadaci
# 1. Provedite t-test za usporedbu duljine peraja između mužjaka i ženki.
# 2. Provedite ANOVA-u za usporedbu duljine kljuna među vrstama pingvina.