## funkcja pobierająca dane z api SDG

all_fun1 <- function() {
  ## pobieracnie celu 1
  No_poverty <- fromJSON("https://unstats.un.org/SDGAPI/v1/sdg/Indicator/Data?indicator=1.1.1&pageSIze=9454")
  Target_2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=1.2&pageSize=732')
  Target_3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=1.3&pageSize=2403')
  Target_4 <-  fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Indicator/Data?indicator=1.5.2&pageSIze=36222')
  Target_5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Indicator/Data?indicator=1.5.1&pageSIze=30160')
  Target_6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=1.a&pageSize=1819')
  indicator_1.5.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Indicator/Data?indicator=1.5.4&pageSIze=135')
  
  # # cel 2
  ## pobieranie celu 2
  Zero_hunger <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=2.1&pageSize=4632')
  Target_2.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=2.2&pageSize=2453')
  Target_2.5 <- fromJSON("https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=2.5&pageSize=25990")
  Target_2.a <- fromJSON("https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=2.a&pageSize=5161")
  Target_2.b <- fromJSON("https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=2.b&pageSize=272")
  target_2.c <- fromJSON("https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=2.c&pageSize=167")
  
  #cel 3
  #pobieranie danych
  Good_health <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.1&pageSize=12324')
  Target_3.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.2&pageSize=2453')
  Target_3.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.3&pageSize=30528')
  Target_3.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.4&pageSize=22155')
  Target_3.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.5&pageSize=1149')
  Target_3.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.6&pageSize=2860')
  Target_3.7 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.7&pageSize=2703')
  Target_3.8 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.8&pageSize=1135')
  Target_3.9 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.9&pageSize=4617')
  Target_3.a <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.a&pageSize=506')
  Target_3.b <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.b&pageSize=11749')
  Target_3.c <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.c&pageSize=4147')
  Target_3.d <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=3.d&pageSize=16106')
  
  # cel 4
  # pobieranie danych dla celu 4
  
  Education <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=4.1&pageSize=3870')
  Target_4.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=4.2&pageSize=5243')
  Target_4.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=4.3&pageSize=273')
  Target_4.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=4.4&pageSize=1150')
  Target_4.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=4.5&pageSize=9867')
  Target_4.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=4.6&pageSize=68')
  Target_4.7 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=4.a&pageSize=6939')
  Target_4.8 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=4.b&pageSize=1916')
  Target_4.9 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=4.c&pageSize=12207')
  
  # cel 5
  # pobieranie danych dla celu 5
  
  Gender_equality <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=5.2&pageSize=442')
  Target_5.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=5.3&pageSize=391')
  Target_5.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=5.4&pageSize=5640')
  Target_5.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=5.5&pageSize=15012')
  Target_5.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=5.6&pageSize=94')
  Target_5.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=5.b&pageSize=124')
  
  # cel 6
  # pobieranie danych dla celu 6
  
  Clean_water <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=6.1&pageSize=3395')
  Target_6.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=6.2&pageSize=14481')
  Target_6.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=6.3&pageSize=131')
  Target_6.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=6.4&pageSize=206')
  Target_6.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=6.5&pageSize=1009')
  Target_6.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=6.6&pageSize=13057')
  Target_6.7 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=6.a&pageSize=2906')
  Target_6.8 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=6.b&pageSize=887')

  # cel 7
  # pobieranie danych dla celu 7
  
  Clean_energy <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=7.1&pageSize=12216')
  Target_7.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=7.2&pageSize=4032')
  Target_7.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=7.3&pageSize=3438')

  # cel 8
  # pobieranie danych dla celu 8
  
  Work_and_ekonomi <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.1&pageSize=3395')
  Target_8.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.2&pageSize=14481')
  Target_8.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.3&pageSize=131')
  Target_8.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.4&pageSize=206')
  Target_8.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.5&pageSize=1009')
  Target_8.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.6&pageSize=13057')
  Target_8.7 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.7&pageSize=2906')
  Target_8.8 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.8&pageSize=887')
  Target_8.7 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.10&pageSize=2906')
  Target_8.8 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=8.a&pageSize=887')
  
  # cel 9
  # pobieranie danych dla celu 
  
  Industry <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=9.1&pageSize=1197')
  Target_9.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=9.2&pageSize=10101')
  Target_9.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=9.3&pageSize=810')
  Target_9.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=9.4&pageSize=8402')
  Target_9.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=9.5&pageSize=3512')
  Target_9.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=9.a&pageSize=3029')
  Target_9.7 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=9.b&pageSize=2352')
  Target_9.8 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=9.c&pageSize=5478')
  
  # cel 10
  # pobieranie danych dla celu 10
  
  Reduce_ineqality <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=10.1&pageSize=188')
  Target_10.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=10.4&pageSize=750')
  Target_10.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=10.6&pageSize=28380')
  Target_10.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=10.a&pageSize=84')
  Target_10.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=10.b&pageSize=3767')
  Target_10.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=10.c&pageSize=302')
  
  # cel 11
  # pobieranie danych dla celu 11
  
  Cities <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=11.1&pageSize=298')
  Target_11.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=11.5&pageSize=132246') #########
  Target_11.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=11.6&pageSize=655')
  Target_11.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=11.b&pageSize=678')
  
  # cel 12
  # pobieranie danych dla celu 12
  
  Responsible_consumption <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=12.2&pageSize=347058') #######
  Target_12.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=12.4&pageSize=841')
  
  # cel 13
  # pobieranie danych dla celu 13
  
  Climate <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=13.1&pageSize=89838') ######
  
  # cel 14
  # pobieranie danych dla celu 14
  
  Below_water <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=14.4&pageSize=25')
  Target_14.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=14.5&pageSize=12503') #########
  Target_14.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=14.a&pageSize=86')
  
  # cel 15
  # pobieranie danych dla celu 15
  
  Belowa_land <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=15.1&pageSize=1197')
  Target_15.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=15.2&pageSize=10101')
  Target_15.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=15.4&pageSize=810')
  Target_15.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=15.5&pageSize=8402')
  Target_15.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=15.6&pageSize=3512')
  Target_15.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=15.a&pageSize=3029')
  Target_15.7 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=15.b&pageSize=2352')
  
  # cel 16
  # pobieranie danych dla celu 16
  
  Peaca_andJustice <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=16.1&pageSize=1920')
  Target_16.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=16.2&pageSize=459')
  Target_16.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=16.3&pageSize=296')
  Target_16.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=16.5&pageSize=176')
  Target_16.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=16.8&pageSize=28380')
  Target_16.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=16.9&pageSize=187')
  Target_16.7 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=16.10&pageSize=125')
  Target_16.8 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=16.a&pageSize=1446')
  
  # cel 17
  # pobieranie danych dla celu 17
  
  Partnership_for_goals <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.2&pageSize=1920')
  Target_17.2 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.3&pageSize=459')
  Target_17.3 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.4&pageSize=296')
  Target_17.4 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.6&pageSize=176')
  Target_17.5 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.8&pageSize=28380')
  Target_17.6 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.9&pageSize=187')
  Target_17.7 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.10&pageSize=125')
  Target_17.8 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.11&pageSize=1446')
  Target_17.9 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.12pageSize=1920')
  Target_17.10 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.15&pageSize=459')
  Target_17.11 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.16&pageSize=296')
  Target_17.12 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.18&pageSize=176')
  Target_17.13 <- fromJSON('https://unstats.un.org/SDGAPI/v1/sdg/Target/Data?target=17.19&pageSize=28380')

  # tworzenie ramki danych111

  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Target_2 <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Target_3 <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Target_4 <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Target_5 <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Target_6 <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  indicator_1.5.4 <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Zero_hunger <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  Goal1_df <- as.data.frame(matrix(unlist(No_poverty$data), nrow = nrow(No_poverty$data)))
  dataframe_2 <- rbind(Goal2_df,Tg_2_2_df,Tg_2_3_df,Tg_2_4_df,Tg_2_5_df,Tg_2_6_df)
  colnames(dataframe_2) <- c("Goal",
                            "Geo_ID",
                            "Country",
                            "Time",
                            "Value",
                            "Series",
                            "Description")

 
 



  finall <- rbind(dataframe_1,dataframe_2,dataframe_3)

  return(finall)
}

test_opt <- all_fun1()

My_SDG <- My_SDG %>% mutate(Value = as.numeric(levels(Value))[Value])

dane <- My_SDG %>% select(Goal,
                       SeriesCode,
                       SeriesDescription,
                       GeoAreaCode,
                       GeoAreaName,
                       TimePeriod,
                       Value,
                       X.Age.,
                       X.Sex.,
                       X.Cities.,
                       X.Education.level.,
                       X.Hazard.type.,
                       X.Mode.of.transportation.,
                       X.Type.of.mobile.technology.,
                       X.Level.Status.,
                       X.Type.of.product.,
                       X.Type.of.speed.,
                       X.Tariff.regime..status..,
                       X.Type.of.occupation.,
                       X.T)

dane <- dane %>% mutate(group = c(
                                  X.Age.,
                                  X.Cities.,
                                  X.Education.level.,
                                  X.Hazard.type.,
                                  X.Mode.of.transportation.,
                                  X.Type.of.mobile.technology.,
                                  X.Level.Status.,
                                  X.Type.of.product.,
                                  X.Type.of.speed.))

write.xlsx(clr, file = "grupowanie.xlsx")
