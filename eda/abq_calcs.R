library(sf)
library(here)
library(dplyr)
library(rvest)
library(httr)
library(V8)


zips <- st_read(here("shapefile","tl_2020_us_zcta520.shp"))


counties <- st_read(here("shapefile","tl_2021_us_county.shp"))


nm_counties_zip <- zips %>% 
  left_join(.,
            nm_counties,
            by=GEOID)



nm_x_y <- sqrt(121590)
nm_x_y






url <- "https://www.unitedstateszipcodes.org/nm/"

nm_zip_codes <- url %>%
  html() %>%
  html_nodes(xpath='/html/body/div[1]/div/div[4]/div/div[2]/div[2]') %>%
  html_table()


nm_zips <- nm_zip_codes[[1]]

