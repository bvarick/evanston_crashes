library(tidyverse)
library(sf)
library(tmap)

evanston_crashes <- read_sf(dsn = "data/Pedestrian and Cyclist related crashes 112020-982026.kml")

evanston_crashes <- evanston_crashes |> 
  select(Name, Crash_Time, Primary_Street_Full, Cross_Street_Full, address, Collision_Type, Most_Serious_Injury, geometry) |> 
  mutate(crash_datetime = mdy_hm(paste0(Name, "_", Crash_Time))) |> 
  mutate(year = year(crash_datetime)) |> 
  mutate(
    Most_Serious_Injury = factor(Most_Serious_Injury, 
                                 levels = c("NO APPARENT INJURY",
                                            "POSSIBLE INJURY",
                                            "SUSPECTED MINOR INJURY",
                                            "SUSPECTED SERIOUS INJURY",
                                            "FATALITY")
    )
  )

ggplot(data = evanston_crashes |> 
         group_by(year, Collision_Type, Most_Serious_Injury) |> 
         summarise(total = n())) +
  geom_col(aes(x = year, 
               y = total,
               fill = Most_Serious_Injury)) +
  scale_fill_brewer(palette = "YlOrRd") +
  scale_x_continuous(breaks = seq(min(evanston_crashes$year), max(evanston_crashes$year), 1)) +
  facet_grid(Collision_Type ~ .) +
  labs(title = "Evanston crashes involving a pedestrian/bicyclist",
       subtitle = "2020 - Sept 2026",
       x = "Year",
       y = "Number of crashes",
       fill = "Injury Severity")
