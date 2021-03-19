# Packages suggested via michellebyrne1
packages <- c("data.table", "extraoperators", "haven", "ggplot2"
              , "ggpubr", "JWileymisc", "lme4", "multilevelTools"
              , "mice", "readr", "readxl", "reshape2", "rlang"
              , "rmarkdown", "tufte", "stats", "visreg")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages], dependancies = TRUE)
}

# load packages
invisible(lapply(packages, library, character.only = TRUE))
