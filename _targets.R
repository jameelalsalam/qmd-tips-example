
library(targets)
library(tarchetypes)

# tar_option_set(
#   packages = c("tidyverse", "palmerpenguins")
# )

# functions
# tar_source()

if (FALSE) {
  quarto::quarto_render("docs/penguins.qmd")
}

list(
  tar_target(penguin_data, palmerpenguins::penguins),
  tar_quarto(penguins_qmd, "docs/penguins.qmd")#, # this was erroring... but now not?
  #tar_quarto(all_qmd, ".") # this works, but does the whole 'project'
)
