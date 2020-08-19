library(dataspice)
library(googlesheets4)
library(readr)

gs4_auth(email = "nicholas.tierney@gmail.com")

skittles_raw <- read_sheet("https://docs.google.com/spreadsheets/d/1DNpb40ctQNt3ClybV6UdzsqukDpMnLBI4MNjokDw7qo/edit#gid=0")

write_csv(skittles_raw, "data-raw/skittles-raw.csv")
