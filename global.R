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

pyt <- read.xlsx(xlsxFile = "Pytania.xlsx",
                 colNames = TRUE) %>%
  mutate(praw=as.logical(praw)) %>%
  mutate(plot_img=as.logical(plot_img))

## funkcja pobierająca dane z api SDG 

all_fun <- function() {
## pobieracnie celu 1 
No_poverty <- fromJSON("https://unstats.un.org/SDGAPI/v1/sdg/Indicator/Data?indicator=1.1.1&pageSIze=9454")
Target_2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=1.2&pageSize=732')
Target_3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=1.3&pageSize=2403')
## pobieranie celu 2
Zero_hunger <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=2.1&pageSize=4632')


# tworzenie ramki danych
# cel 1
Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data))) %>% select(V1,V4,V5,V7,V8,V9,V10,V17)
Tg_2_df <- as.data.frame(matrix(unlist(Target_2$data), nrow = nrow(Target_2$data))) %>% select(V1,V4,V5,V7,V8,V9,V10,V17)
tg_3_df <-  as.data.frame(matrix(unlist(Target_3$data), nrow = nrow(Target_3$data))) %>% select(V1,V4,V5,V7,V8,V9,V10,V17)
# cel 2
Goal2_df <- as.data.frame(matrix(unlist(Zero_hunger$data), nrow = nrow(Zero_hunger$data))) %>% select(V1,V4,V5,V7,V8,V9,V10,V17)


finall <- rbind(Goal1_df,Tg_2_df,tg_3_df,Goal2_df)
finall$V10 <- round(as.numeric(as.character(finall$V10)),2)
colnames(finall) <- c("Goal",
                       "Series",
                       "Description",
                       "Geo_ID",
                       "Country",
                       "Time",
                       "Value",
                      "Group")

finall$Time <- round(as.numeric(as.character(finall$Time)),1)

return(finall)
}



#goal_df <- all_fun()
