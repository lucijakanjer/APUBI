# Primjeri multivarijatnih analize bioloških podataka
# (linearni modeli, klaster analize i ordinacijske analize)

# Višestruka linearna regresija
P# rimjena višestruke linearne regresije za predikciju biološke varijable na temelju više prediktora.

# Višestruki linearni model za predikciju tjelesne mase na temelju duljine kljuna i duljine peraja
multiple_linear_model <- lm(body_mass_g ~ bill_length_mm + flipper_length_mm, data = penguins)
summary(multiple_linear_model)

# Klaster analiza
# Grupiranje sličnih objekata na temelju njihovih karakteristika.

# Klaster analiza na osnovu duljine kljuna i peraja
penguins_scaled <- scale(penguins[, c("bill_length_mm", "flipper_length_mm")], center = TRUE, scale = TRUE)
penguins_clusters <- kmeans(penguins_scaled, centers = 3)
table(penguins_clusters$cluster)

# Ordinacijske analize (PCA)
# Ordinacijska analiza (PCA) za smanjenje dimenzionalnosti podataka.

# PCA analiza na temelju duljine kljuna, peraja i tjelesne mase
pca_result <- prcomp(penguins[, c("bill_length_mm", "flipper_length_mm", "body_mass_g")], scale. = TRUE)
summary(pca_result)
plot(pca_result$x[,1], pca_result$x[,2], col = penguins$species)

# Zadaci
# Provedite višestruku linearnu regresiju za predikciju tjelesne mase na temelju više varijabli.
# Provedite klaster analizu na osnovu biometrijskih mjera pingvina.
# Provedite PCA na temelju bioloških varijabli i interpretirajte glavne komponente.
