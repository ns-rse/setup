#!/bin/bash
#
# A script to setup a standard project folder structure and files and place it under
# git version control

# Store arguments
args=("$@")

# Route directory
mkdir ${args[0]}
touch ${args[0]}/README.md

# R library
mkdir ${args[0]}/lib/R -p
mkdir ${args[0]}/lib/data
mkdir ${args[0]}/lib/data-raw
# TODO - Intelligently create a DESCRIPTION file with key R packages and a title
# Package: ${args[0]}
# Title:
# Version: date --iso-8601
# Authors@R: person("Neil", "Shephard", email = "n.shephard@sheffield.ac.uk", role = c("aut", "cre"))
# Description:
# Depends:
#     R (>= 3.3.4),
#     broom (>= 0.4.2),
#     ctru (>= 0.0.0.9001),
#     DT (>= 0.2),
#     forcats (>= 0.2.0),
#     formattable (>= 0.2.0.1),
#     ggfortify (>= 0.4.1),
#     ggplot2 (>= 2.2.1),
#     haven (>= 1.0.0),
#     Hmisc (>= 4.0-3),
#     knitr (>= 1.11),
#     lazyeval (>= 0.2.0),
#     magrittr (>= 1.5),
#     rms (>= 5.1-1),
#     shiny(>= 1.0.3),
#     stringr (>= 1.2.0),
#     tidyr (>= 0.6.2),
#     tidyverse (>= 1.1.1)
#     xtable (>= 1.8-2)
# License: GPL-3
# LazyData: true
# RoxygenNote: 6.0.1
touch ${args[0]}/DESCRIPTION

# Shiny directory
mkdir ${args[0]}/lib/inst/shiny/${args[0]}

# Report direcories
mkdir ${args[0]}/rmarkdown
mkdir ${args[0]}/rmarkdown/sections/subsections
touch ${args[0]}/rmarkdown/${args[0]}.Rmd
touch ${args[0]}/rmarkdown/sections/overview.Rmd
touch ${args[0]}/rmarkdown/sections/methods.Rmd
touch ${args[0]}/rmarkdown/sections/results.Rmd
touch ${args[0]}/rmarkdown/sections/appendix.Rmd
touch ${args[0]}/rmarkdown/sections/bibliography.bib

# Misc
mkdir ${args[0]}/tmp

# TODO - Place under version control