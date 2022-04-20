library(tidyverse)
library(rvest)

cran_url <- "https://cran.r-project.org/web/packages/available_packages_by_date.html"

pkg <- cran_url %>% 
  read_html() %>% 
  html_element(css = "body > div > table") %>% 
  html_table() %>% 
  mutate(low_title = str_to_lower(Title))

dim(pkg) # 18k total pkgs

spt <- c(
  "basketball",
  "football",
  "soccer",
  "baseball",
  "hockey",
  "tennis",
  "cricket",
  "golf",
  "swimming",
  "lacrosse",
  "rugby",
  "softball",
  "nfl",
  "nba",
  "nhl",
  "mlb",
  "epl",
  "afl",
  "mls",
  "ncaa",
  "badminton",
  "chess",
  "volleyball",
  "sport",
  "sports",
  "betting",
  "olympics",
  "athletics"
)

spt_regex <- str_c("\\s", str_c(spt, collapse = "\\s|\\s"), "\\s")

pkg %>% 
  filter(str_detect(low_title, spt_regex))

