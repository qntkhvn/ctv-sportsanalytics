# https://cran.r-project.org/web/packages/ctv/vignettes/ctv-howto.html
library(ctv)
x <- read.ctv("SportsAnalytics.md")
print(x)
ctv2html(x)
browseURL("SportsAnalytics.html")