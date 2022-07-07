
if (requireNamespace("tinytest", quietly=TRUE))  {

    ## Docker is picky about memory use so we lower the allocated total from the
    ## package default of 10mb per column to 5mb per columns
    #if (Sys.getenv("CI", "") != "") tiledb::save_allocation_size_preference(1024*1024*5)

    tinytest::test_package("tiledb")
}
