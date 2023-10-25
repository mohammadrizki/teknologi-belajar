# CRAN repository
local({
    r <- getOption("repos")
    r["CRAN"] <- "http://cran.r-project.org"
    options(repos=r)
})

# manage R packages with pacman R package
if(!requireNamespace("pacman", quietly = TRUE)) install.packages("pacman")

# requirements
pkg_list <- c(
    "jsonlite",     # gitlab CI complains that the package is missing
    "reticulate",   # gitlab CI complains that the package is missing
    "rmarkdown"     # gitlab CI complains that the package is missing
)

# install
pacman::p_load(char = pkg_list)
