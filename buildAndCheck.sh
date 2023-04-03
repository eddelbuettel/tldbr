#!/bin/bash

## docker.yaml does not use run.sh from r-ci as all components present
## we just build and check

#R CMD build --no-build-vignettes --no-manual .
#R CMD check --no-vignettes --no-manual tiledb_0.10.2.tar.gz

R CMD INSTALL tiledb_0.10.2.tar.gz
Rscript -e 'tinytest::run_test_file("inst/tinytest/test_tiledbarray.R")'
