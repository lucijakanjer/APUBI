# You can install the released version of palmerpenguins from CRAN with:
install.packages("palmerpenguins")

# install.packages("remotes")
# remotes::install_github("allisonhorst/palmerpenguins")

glimpse(penguins)

visdat::vis_dat(penguins)

library(palmerpenguins)
library(dplyr)
library(ggplot2)
theme_set(theme_minimal())

# Exploring factors
penguins %>%
  dplyr::select(where(is.factor)) %>% 
  glimpse()

# Count penguins for each species / island
penguins %>%
  count(species, island, .drop = FALSE)

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(alpha = 0.8) +
  scale_fill_manual(values = c("darkorange","purple","cyan4"), 
                    guide = FALSE) +
  theme_minimal() +
  facet_wrap(~species, ncol = 1) +
  coord_flip()

# Count penguins for each species / sex
penguins %>%
  count(species, sex, .drop = FALSE)

ggplot(penguins, aes(x = sex, fill = species)) +
  geom_bar(alpha = 0.8) +
  scale_fill_manual(values = c("darkorange","purple","cyan4"), 
                    guide = FALSE) +
  theme_minimal() +
  facet_wrap(~species, ncol = 1) +
  coord_flip()

# Exploring scatterplots
penguins %>%
  dplyr::select(body_mass_g, ends_with("_mm")) %>% 
  glimpse()

# Scatterplot example 1: penguin flipper length versus body mass
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 2) +
  scale_color_manual(values = c("darkorange","darkorchid","cyan4")) 

# Scatterplot example 2: penguin bill length versus bill depth
ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 2)  +
  scale_color_manual(values = c("darkorange","darkorchid","cyan4"))

ggplot(penguins, aes(x = flipper_length_mm,
                     y = body_mass_g)) +
  geom_point(aes(color = sex)) +
  scale_color_manual(values = c("darkorange","cyan4"), 
                     na.translate = FALSE) +
  facet_wrap(~species)

# Exploring correlations
penguins %>%
  select(species, body_mass_g, ends_with("_mm")) %>% 
  GGally::ggpairs(aes(color = species)) +
  scale_colour_manual(values = c("darkorange","purple","cyan4")) +
  scale_fill_manual(values = c("darkorange","purple","cyan4"))

# Exploring distributions
# Jitter plot example: bill length by species
ggplot(data = penguins, aes(x = species, y = bill_length_mm)) +
  geom_jitter(aes(color = species),
              width = 0.1, 
              alpha = 0.7,
              show.legend = FALSE) +
  scale_color_manual(values = c("darkorange","darkorchid","cyan4"))

# Histogram example: flipper length by species
ggplot(data = penguins, aes(x = flipper_length_mm)) +
  geom_histogram(aes(fill = species), alpha = 0.5, position = "identity") +
  scale_fill_manual(values = c("darkorange","darkorchid","cyan4"))

# Package citation
citation("palmerpenguins")
