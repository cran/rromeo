## ----setup, include = FALSE----------------------------------------------
library(vcr)

vcr_configure("../inst")

use_cassette("vignette_cassette", {
  rromeo::rr_journal_issn("1947-6264")
  rromeo::rr_journal_find("Biostatistics", qtype = "contains")
  rromeo::rr_journal_name("Biostatistics", qtype = "contains")
  rromeo::rr_journal_name("Biostatistics", qtype = "starts")
  rromeo::rr_journal_name("Biostatistics", qtype = "exact")
  rromeo::rr_publisher_name(name = "Oxford", qtype = "all")
  rromeo::rr_publisher_name(name = "Oxford University", qtype = "all")
  rromeo::rr_publisher_name(name = "Oxford University", qtype = "exact")
  rromeo::rr_publisher_id(id = 55)
  rromeo::rr_publisher_country(country = "IR")
  rromeo::rr_publisher_continent(continent = "Australasia")
}, record = "once")

insert_cassette("vignette_cassette")

## ----query_issn----------------------------------------------------------
library(rromeo)

rr_journal_issn("1947-6264")

## ----query_name_contains-------------------------------------------------
rr_journal_find("Biostatistics", qtype = "contains")

## ----query_name_contains_multiple----------------------------------------
res <- rr_journal_name("Biostatistics", qtype = "contains")
tail(res, 3)

## ----query_name_starts---------------------------------------------------
rr_journal_name("Biostatistics", qtype = "starts")

## ----query_name_exact----------------------------------------------------
rr_journal_name("Biostatistics", qtype = "exact")

## ----query_publisher_name------------------------------------------------
rr_publisher_name(name = "Oxford", qtype = "all")

## ----query_publisher_name_all--------------------------------------------
rr_publisher_name(name = "Oxford University", qtype = "all")

## ----query_publisher_name_exact------------------------------------------
rr_publisher_name(name = "Oxford University", qtype = "exact")

## ----query_romeo_id------------------------------------------------------
rr_publisher_id(id = 55)

## ----query_publisher_country---------------------------------------------
rr_publisher_country(country = "IR")

## ----query_publisher_continent-------------------------------------------
rr_publisher_continent(continent = "Australasia")

## ----query_romeo_colour, eval = FALSE------------------------------------
#  rr_romeo_colour(romeo_colour = "green")

## ----bar_graph-----------------------------------------------------------
library(ggplot2)
theme_set(theme_minimal())

stacked_res <- stack(res[, 4:6])
ggplot(stacked_res, aes(x = ind, fill = values)) +
  geom_bar() +
  labs(x = NULL,
       subtitle = "Archiving Policies of Journals with 'Biostatistics' in their title")

## ----pie_chart-----------------------------------------------------------
ggplot(res, aes(x = "a", fill = romeocolour)) +
  geom_bar() + 
  coord_polar("y") +
  labs(x = NULL,
       subtitle = "RoMEO colours of Journals with 'Biostatistics' in their title")

## ----eject_vignette_cassette, include = FALSE----------------------------
eject_cassette("vignette_cassette")

