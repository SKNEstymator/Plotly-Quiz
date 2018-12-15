observeEvent(input$add_my_page, {
  alert("You can download this chart ;) Just point mouse at the top of the chart and pick camera icon. ")
})
 # przypisanie wartości pustej i dodawanie numeru do zapisu wykresu
plot <- reactiveValues(plot = NULL, numer = 1)


# wybór opisów do listy rozwijanej na podstawie wybranego celu
output$description <- renderUI({
  
  goal <- My_SDG %>% 
    dplyr::filter(Goal == (input$goal))
  selectInput("description",
              label = "Choose description",
              choices = unique(goal$SeriesDescription),
              selected = unique(goal$SeriesDescription)[1])
  
  # goal <- goal_df %>%
  #   dplyr::filter(Goal == (input$goal))
  # 
  # selectInput("description", 
  #             label = "Choose description",
  #             choices = unique(goal$Description),
  #             selected = unique(goal$Description)[1])
})
# wybór krajów do listy rozwijanej na podstawie wybranego celu
output$countries <- renderUI({
  
  goal <- My_SDG %>% 
    dplyr::filter(Goal == (input$goal), SeriesDescription == input$description)
  
  selectInput("countries",
              label = "Chooes country / region",
              choices = unique(goal$GeoAreaName),
              selected = unique(goal$GeoAreaName)[2], multiple = TRUE)
  
  # goal <- goal_df %>%
  #   dplyr::filter(Goal == (input$goal), Description == input$description)
  # 
  # selectInput("countries", 
  #             label = "Choose country/region",
  #             choices = unique(goal$Country),
  #            selected = unique(goal$Country)[2], multiple = TRUE)
  
  
})
# dodanie opcji sortowania 
output$group <- renderUI({
  goal <- My_SDG %>% 
    dplyr::filter(Goal == (input$goal))

    selectInput("group",
                label = "Group By:",
                choices = unique(goal$X.Age.,
                                 goal$X.Cities.,
                                 goal$X.Education.level.,
                                 goal$X.Freq.,
                                 goal$X.Hazard.type.,
                                 goal$X.Level.Status.,
                                 goal$X.Migratory.status.,
                                 goal$X.Mode.of.transportation.,
                                 goal$X.Name.of.international.institution.,
                                 goal$X.Name.of.non.communicable.disease.,
                                 goal$X.Tariff.regime..status..,
                                 goal$X.Type.of.mobile.technology.,
                                 goal$X.Type.of.ocuppation,
                                 goal$X.Type.of.skill.,
                                 goal$X.Type.of.speed.)) # razem z X.Type.of.product
#   selectInput("group",
#               label = "Group by:",
#               choices = unique(goal$Group))
})

output$group2 <- renderUI({
# dodanie opcji sortowania 
  goal <- My_SDG %>% 
    dplyr::filter(Goal == (input$goal))
  
  selectInput("group2",
              label = "Group by:",
              choices = unique(goal$X.Sex.,
                               goal$X.Type.of.product.,
                               goal$X.location.,
                               goal$X.Bounds.))
  # goal <- goal_df %>%
  #   dplyr::filter(Goal == (input$goal))
  # 
  # selectInput("group2",
  #             label = "Group by:",
  #             choices = unique(goal$Group))
})

output$plot_inter <- renderPlotly({
 
  seria <- My_SDG %>%
    dplyr::filter(Goal == (input$goal),
                  GeoAreaName %in% input$countries,
                  SeriesDescription == input$description,
                  X.Age. == input$group,
                  X.Cities. == input$group,
                  X.Education.level. == input$group,
                  X.Freq. == input$group,
                  X.Hazard.type. == input$group,
                  X.Level.Status. == input$group,
                  X.Migratory.status. == input$group,
                  X.Mode.of.transportation. == input$group,
                  X.Name.of.international.institution. == input$group,
                  X.Name.of.non.communicable.disease. == input$group,
                  X.Tariff.regime..status.. == input$group,
                  X.Type.of.skill. == input$group,
                  X.Type.of.speed. == input$group,
                  X.Type.of.product. == input$group2,
                  X.Sex. == input$group2) %>% group_by(X.Age.,
                                                       X.Cities.,
                                                       X.Education.level.,
                                                       X.Hazard.type.,
                                                       X.Level.Status.,
                                                       X.Migratory.status.,
                                                       X.Mode.of.transportation.,
                                                       X.Name.of.international.institution.,
                                                       X.Name.of.non.communicable.disease.,
                                                       X.Tariff.regime..status..,
                                                       X.Type.of.skill.,
                                                       X.Type.of.speed.)
  
  p <- plotly::plot_ly(data = seria,
                  y = ~Value,
                  x = ~TimePeroid,
                  color = ~GeaAreaName,
                  type = "scatter",
                  mode = "line+markers") %>%
    layout(title = input$description,
           xaxis=list(range=c(1990,2018),
                      title = "Time"),
           ysxis = list(title = "Value"))
  
  plot$plot <- p
  
  p
  
})
# funkcja która ma zapisywać wykres do bazy danych wykresów które będą dodane do quizu
# z powodów technicznych i braku dostępu do zewnętrznej bazy danych nie mogliśmy zaimlementować funkcji zapisu wykresów
# i wykorzystanie ich w quizie 
output$save <- downloadHandler(
  
  if(!is.null(plot$plot)){
    
    p <- plot$plot
    
    i <- plot$numer
    
    save(p, file = paste0("plot/imgtest",i,".RData"))
    
    plot$numer <- i + 1
  }
  
  
)

 # wyświetlenie u Ui wykresó wybranych przez użytkownika wyświetlrnie wyktesu kolumnowego
output$plot_bar_inter <- renderPlotly({
  
  seria_2 <- goal_df %>% 
    dplyr::filter(Goal == (input$goal),
                  Country %in% input$countries,
                  Description == input$description)#
 
  # miejsce tworzenia wykresów za pomocą pakiety plotly
  plotly::plot_ly(data = seria_2,
                  x = ~Time,
                  y = ~Value,
                  color = ~Country,
                  type = "bar",
                  mode = "markers") %>% 
    layout(title = input$description,
           xaxis=list(range=c(1990,2018),
                      title = "Time"),
           ysxis = list(title = "Value")
    )
  
})
# testowy wykres właściwe wykresy to liniowy i kolumnowy
output$plot_scatter_inter <- renderPlotly({
  
  seria_3 <- My_SDG %>% 
    dplyr::filter(Goal == as.numeric(input$goal), GeoAreaName %in% input$countries, SeriesDescription == input$description)

     plotly::plot_ly(data = seria_3,
                  x = ~TimePeriod,
                  y = ~Value,
                  color = ~GeoAreaName,
                  size = ~Value,
                  type = "scatter",
                  mode = "markers") %>% 
    layout(title = input$description,
           xaxis=list(range=c(2000,2018),
                      title = "Time"),
           ysxis = list(title = "Value")
    )
})
