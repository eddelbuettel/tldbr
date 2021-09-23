library(tinytest)
library(tiledb)

isOldWindows <- Sys.info()[["sysname"]] == "Windows" && grepl('Windows Server 2008', osVersion)
if (isOldWindows) exit_file("skip this file on old Windows releases")
isMacOS <- (Sys.info()['sysname'] == "Darwin")

ctx <- tiledb_ctx(limitTileDBCores())

## piped filtering and selection
if (getRversion() < "4.1.0") exit_file("Need R 4.1.0 or later")

if (!requireNamespace("palmerpenguins", quietly=TRUE)) exit_file("remainder needs 'palmerpenguins'")
library(palmerpenguins)

uri <- tempfile()
fromDataFrame(penguins, uri, sparse = TRUE, col_index=1:2)
res <- tiledb_array(uri, return_as="data.frame") |>
    tdb_filter(body_mass_g >= 5500) |>
    tdb_filter(bill_length_mm > 50) |>
    tdb_select(body_mass_g, bill_length_mm, year, sex) |>
    tdb_collect()
expect_equal(dim(res), c(14,6))
expect_true(min(res$body_mass_g) >= 5500)
expect_true(min(res$bill_length_mm) > 50)
expect_equal(colnames(res), c("species", "island", "body_mass_g", "bill_length_mm", "year", "sex"))
