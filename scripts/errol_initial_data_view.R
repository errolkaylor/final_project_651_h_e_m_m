library(rio)
library(tidyverse)
library(here)
library(datapasta)
library(ggplot2)
theme_set(theme_minimal())
x <- read.csv(here("School Support.csv"))
head(x)
LEO_summary <- x %>%
  filter(SCH_FTESECURITY_LEO > 0) %>%
  group_by(LEAID) %>%
  summarize(average_LEO = mean(SCH_FTESECURITY_LEO)) %>%
  ggplot(aes(LEAID,average_LEO))+
    geom_point()

LEO_summary
