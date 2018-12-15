library(googlesheets)
library(jsonlite)
gs_auth(new_user = TRUE)

# połączenie z googlem 
No_poverty <- fromJSON("https://unstats.un.org/SDGAPI/v1/sdg/Indicator/Data?indicator=1.1.1&pageSIze=9454")
Goal_test <- No_poverty$data

gs <- gs_new(title = "SDG data", ws_title = "SDG", input = fromJSON("https://unstats.un.org/SDGAPI/v1/sdg/Indicator/Data?indicator=1.1.1&pageSIze=9454"))

# dodanie danych 

gs_add_row(gs, ws = "SDG", input = )
