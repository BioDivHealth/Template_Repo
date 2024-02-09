# 0. Session details ----

# Script created by Elise Gallois 22nd January 2024
# R version 4.3.2 (2023-10-31)
# Running under: macOS Ventura 13.2.1
# Load data and make exploratory plots
# Indicate script writing best practice 


# 1. Load libraries ----
library(tidyverse)
library(esquisse)
library(viridisLite)

# 2. Plot caret data ----
(iris_scatter <- ggplot(datasets::iris) +
  aes(x = Sepal.Length, y = Sepal.Width, colour = Species) +
  geom_point(shape = "triangle", size = 3, alpha = 0.5) +
  scale_color_viridis_d(option = "viridis", direction = 1) +
  labs(x = "Sepal Length (mm)",
    y = "Sepal Width (mm)",
    color = "Species") +
  theme_classic())

# 3. Save plot ----
ggsave('figures/01_iris_scatter.jpg', width = 4, height = 3)




