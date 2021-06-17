
d <- c ("Package: demo",
        "Title: What the Package Does (One Line, Title Case)",
        "Version: 0.0.0.9000",
        "Authors@R:",
        "  person(given = \"First\",",
        "         family = \"Last\",",
        "         role = c(\"aut\", \"cre\"),",
        "         email = \"first.last@example.com\")",
        "Description: What the package does (one paragraph).",
        "License: GPL-3",
        "Encoding: UTF-8",
        "Roxygen: list(markdown = TRUE, roclets = c (\"rd\", \"namespace\", \"srr::srr_stats_roclet\"))",
        "RoxygenNote: 7.1.1")

p <- c ("#' @keywords internal",
        "\"_PACKAGE\"",
        "",
        "# The following block is used by usethis to automatically manage",
        "# roxygen namespace tags. Modify with care!",
        "## usethis namespace: start",
        "## usethis namespace: end",
        "NULL")

x <- c ("#' Function to add two numbers",
        "#'",
        "#' @rdname Addtwo",
        "#' @param x First input",
        "#' @param y Second input",
        "#' @return Sum of x and y",
        "#' @export",
        "#'",
        "#' @srrstats {G1.1} Primary citation for this function follows",
        "#' @references Smith & Jones (2021) A new addition algorithm",
        "addtwo <- function (x, y) {",
        "    return (x + y)",
        "}")

path <- file.path (here::here (), "demo")
dir.create (path, recursive = TRUE)
dir.create (file.path (path, "R"))
writeLines (d, file.path (path, "DESCRIPTION"))
writeLines (p, file.path (path, "R", "demo-package.R"))
writeLines (x, file.path (path, "R", "test.R"))
devtools::document (path)

