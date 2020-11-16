#!/bin/bash
#
# Installs COBALT using the R code in the 'cobaltr' package
#
# Because the R code in the package uses 'cobaltr::' in calling
# its functions, this script removes these prefixes.
#
# Usage:
#
#  ./scripts/install_cobalt.sh
#
#
cat $(find | egrep "/R/.*\\.R") > tempscript.R

echo "install_cobalt()" >> tempscript.R
sed -i'.orginal' "s/cobaltr:://g" tempscript.R
cat tempscript.R

# Run more often, because the large downloads do not always finish in one go
Rscript tempscript.R
Rscript tempscript.R
Rscript tempscript.R
Rscript tempscript.R
Rscript tempscript.R
rm tempscript.R
rm tempscript.R.orginal
