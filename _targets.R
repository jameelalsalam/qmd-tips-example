
library(targets)
library(tarchetypes)

# tar_option_set(
#   packages = c("tidyverse", "palmerpenguins")
# )

# functions
tar_source()

list(
  tar_target(penguin_data, palmerpenguins::penguins)#,
  #tar_quarto(penguins_qmd, "docs/penguins.qmd")
)
