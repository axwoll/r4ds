rm(list=ls())


library(tidyverse)
library(nycflights13)


jan1 <- filter(flights, month == 1, day == 1)

filter(flights, month == 11 | month == 12)

filter(flights, arr_delay >= 2)

arrange(flights, year, month, day)

select(flights, year:day)

filter(flights, is.na(dep_time))

flights_med_na <- arrange(flights, desc(is.na(dep_time)))

filter(flights_med_na, dep_time!=0 | is.na(dep_time))

select(flights, time_hour, air_time, everything())

dput(names(flights))

names(flights) <- c("år", "måned", "day", "dep_time", 
                    "sched_dep_time", "dep_delay", 
                    "arr_time", "sched_arr_time", "arr_delay", "carrier", 
                    "flight", 
                    "tailnum", "origin", "dest", "air_time", "distance", 
                    "hour", 
                    "minute", "time_hour")

rename(flights, måned = month)


select(flights, all_of("month"))

flights_sml <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time
)
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       speed = distance / air_time * 60
)
transmute(flights,
          gain = dep_delay - arr_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours
)

?summarise
summarise(flights_sml, group_by = month)
summarise(group_by(flights, year), sum(day))


diamonds %>%
  count(cut)

flights
airports
planes
weather

planes %>%
  count(tailnum) %>%
  filter(n>1)

weather %>% 
  count(year, month, day, hour, origin) %>% 
  filter(n > 1)

flightRow<- flights %>%
  mutate(rowNr = row_number())

flightRow <- flightRow%>%
  select(rowNr, everything())

slag <- Lahman::Batting
slag <- as_tibble(slag)
slag %>%
  count(year) %>%
  filter(n>1)

flights2 <- flights %>% 
  select(year:day, hour, origin, dest, tailnum, carrier)
flights2
