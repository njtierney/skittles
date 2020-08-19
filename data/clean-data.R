library(tidyverse)

skittles_raw <- read_csv("data-raw/skittles-raw.csv")

skittles_raw %>% 
  rename(order_a = `order...3`,
         order_b = `order...5`,
         order_c = `order...7`,
         choice_a = person_a,
         choice_b = person_b,
         choice_c = person_c) %>% 
  pivot_longer(cols = -skittle_type,
               names_to = c(".value", "person"),
               names_sep = "_")

spec <- tribble(
  ~ .name,    ~ .value, ~ person,
  "person_a", "choice", "a",
  "order_a", "order", "a",
  "person_b", "choice", "b",
  "order_b", "order", "b",
  "person_c", "choice", "c",
  "order_c", "order", "c"
)

skittles <- skittles_raw %>% 
  rename(order_a = `order...3`,
         order_b = `order...5`,
         order_c = `order...7`) %>% 
  pivot_longer_spec(spec, 
                    names_repair = "unique") %>% 
  mutate(real_skittle = recode(
    skittle_type,
    `1` = "red",
    `2` = "orange",
    `3` = "yellow",
    `4` = "green",
    `5` = "purple"
    ),
    correct = choice == real_skittle) %>% 
  relocate(order, .before = choice) 

write_csv(skittles, "data/skittles.csv")
