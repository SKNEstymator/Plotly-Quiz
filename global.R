library(shiny)
library(lubridate)
library(leaflet)
library(readr)
library(dplyr)
#library(DT)
library(ggplot2)
library(shinythemes)
library(shinyWidgets)
library(plotly)
library(shinyjs)
library(openxlsx)
library(jsonlite)
library(shinyalert)
#have_ip()
#readRDS("Baza_danych.rds")

pyt <- read.xlsx(xlsxFile = "Pytania.xlsx",
                 colNames = TRUE) %>%
  mutate(praw=as.logical(praw)) %>%
  mutate(plot_img=as.logical(plot_img))

# wczytujemy zapisaną baze danych  
My_SDG <- readRDS("My_SDG.rds")
# zamiana wartości zmiennych grupujących z factor na character
My_SDG <- My_SDG %>%
  mutate_at(.vars = vars(X.Age.,
                         X.Bounds.,
                         X.Cities.,
                         X.Education.level.,
                         X.Freq.,
                         X.Hazard.type.,
                         X.IHR.Capacity.,
                         X.Level.Status.,
                         X.Location.,
                         X.Migratory.status.,
                         X.Mode.of.transportation.,
                         X.Name.of.international.institution.,
                         X.Name.of.non.communicable.disease.,
                         X.Sex.,
                         X.Tariff.regime..status..,
                         X.Type.of.mobile.technology.,
                         X.Type.of.occupation.,
                         X.Type.of.product.,
                         X.Type.of.skill.,
                         X.Type.of.speed.), .funs = as.character)
# użycie funkcji gather w celu stworzenia jednej kolumny ze zmiennymi grupującymi 
BD <- tidyr::gather(My_SDG, key, group_value, X.Age., X.Bounds., X.Cities., X.Education.level., X.Freq., X.Hazard.type.,
                                               X.IHR.Capacity.,
                                               X.Level.Status.,
                                               X.Location.,
                                               X.Migratory.status.,
                                               X.Mode.of.transportation.,
                                               X.Name.of.international.institution.,
                                               X.Name.of.non.communicable.disease.,
                                               X.Sex.,
                                               X.Tariff.regime..status..,
                                               X.Type.of.mobile.technology.,
                                               X.Type.of.occupation.,
                                               X.Type.of.product.,
                                               X.Type.of.skill.,
                                               X.Type.of.speed.)
# selekcja wartości na te które są potrzebne do tworzenia wykresów 
BD_2 <- BD %>% select(Goal,SeriesDescription,GeoAreaName,TimePeriod,Value,key,group_value)
# zmiana wartości zmiennej Value na numeryczną 
as.numeric(BD_2$Value)