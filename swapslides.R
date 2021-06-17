f <- gsub ("LFILE\\s?=\\s?", "", readLines ("makefile") [1])
f <- paste0 (f, ".html")

# swap position of the two slides indexed in `swap`:
swap_slides <- function (f, swap = 1:2) {

    x <- readLines (f)
    i <- grep ("^class:", x)
    x <- c (x [1:(i [swap [1]] - 1)],
            x [i [swap [2]]:(i [swap [2] + 1] - 1)],
            x [i [swap [1]]:(i [swap [2]] - 1)],
            x [i [swap [2] + 1]:length (x)])
    writeLines (x, f)
}

swap_slides (f, 1:2)
