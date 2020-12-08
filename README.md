# cobaltr

Branch   |[GitHub Actions](https://github.com/richelbilderbeek/cobaltr/actions)                                     |[![Codecov logo](man/figures/Codecov.png)](https://www.codecov.io)
---------|-----------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------
`master` |![R-CMD-check](https://github.com/richelbilderbeek/cobaltr/workflows/R-CMD-check/badge.svg?branch=master) |[![codecov.io](https://codecov.io/github/richelbilderbeek/cobaltr/coverage.svg?branch=master)](https://codecov.io/github/richelbilderbeek/cobaltr/branch/master)
`develop`|![R-CMD-check](https://github.com/richelbilderbeek/cobaltr/workflows/R-CMD-check/badge.svg?branch=develop)|[![codecov.io](https://codecov.io/github/richelbilderbeek/cobaltr/coverage.svg?branch=develop)](https://codecov.io/github/richelbilderbeek/cobaltr/branch/develop)

Interface to COBALT, the Constraint-based Multiple Alignment Tool.

## Installation

```
remotes::install_github("richelbilderbeek/cobaltr")
```


## Install COBALT

After installing `cobaltr`, install COBALT on your local computer:

```
cobaltr::install_cobalt()
```

 * :warning: This is a +900 Mb download, this will take some time

This only needs to be done once.


## Example

```
library(cobaltr)

# Get the path to an example FASTA file
fasta_filename <- system.file("extdata", "example.fasta", package = "cobaltr")

# Get the multiple sequence alignment
run_cobalt(fasta_filename)
```


