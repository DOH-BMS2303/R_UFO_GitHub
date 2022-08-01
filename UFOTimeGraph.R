library(tidyverse)
library(lubridate)

UFO<- read_csv("C:/Users/bms2303/Documents/R_Scripts_C/R_UFO_GitHub/data/scrubbed.csv")


Graph<- UFO %>%
  mutate(Date = mdy_hm(datetime),
         Year = year(Date)) %>%
  group_by(Year) %>%
  count() %>%
  ggplot(., aes(Year, n)) +
  geom_line() +
  labs(y = "Alleged UFO Observations", x = "Date of Observation")

Graph