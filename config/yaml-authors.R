if (knitr::opts_knit$get("rmarkdown.pandoc.to") %in% c("html", "slidy")) {
    cat("  | Fernando P. Mayer         |\n",
        "  |:-------------------------:|\n",
        "  | `fernando.mayer@ufpr.br`  |\n",
        "  |  LEG/DEST/UFPR            |\n",
        sep = "")
} else {
    cat("  Fernando P. Mayer\n")
}
