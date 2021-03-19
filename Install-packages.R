# Packages suggested via michellebyrne1
packages <- c("rlang", "rmarkdown", "data.table", "extraoperators", "readr", "readxl", "haven", "reshape2", "ggplot", "ggplot2", "ggpubr", "visreg", "JWileymisc", "lme4", "multilevelTools", "mice", "tufte")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages], dependancies = TRUE)
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))


