observeEvent(input$add_my_page, {
  alert("You can download this chart ;) Just point mouse at the top of the chart and pick camera icon. ")
})
 # przypisanie wartości pustej i dodawanie numeru do zapisu wykresu
plot <- reactiveValues(plot = NULL, numer = 1)


# wybór opisów do listy rozwijanej na podstawie wybranego celu
output$description <- renderUI({
  
  goal <- BD_2 %>% 
    dplyr::filter(Goal == (input$goal))
  
  selectInput("description",
              label = "Choose description",
              choices = unique(goal$SeriesDescription),
              selected = unique(goal$SeriesDescription)[1])
  
})
# wybór krajów do listy rozwijanej na podstawie wybranego celu
output$countries <- renderUI({
  
  goal <- BD_2 %>% 
    dplyr::filter(Goal == (input$goal), SeriesDescription == input$description)
  
  selectInput("countries",
              label = "Chooes country / region",
              choices = unique(goal$GeoAreaName),
              selected = unique(goal$GeoAreaName)[2], multiple = TRUE)
  
  
})
# dodanie opcji sortowania 
output$group <- renderUI({
  goal <- BD_2 %>% 
    dplyr::filter(Goal == (input$goal), SeriesDescription == (input$description))

  
  choices_vector <- unique(goal$group_value)
  
    selectInput("group",
                label = "Group by:",
                choices = choices_vector)
    
})

output$group2 <- renderUI({
  goal <- BD_2 %>% 
    dplyr::filter(Goal == (input$goal), SeriesDescription == (input$description))
  
 
  selectInput("group2",
              label = "Group by:",
              choices = unique(goal$group_value),
              selected = unique(goal$group_value)[1])
    
  
})


output$city <- renderUI({
#dodanie opcji sortowania
  goal <- BD_2 %>%
    dplyr::filter(Goal == (input$goal), SeriesDescription == (input$description), key == (input$group))

  choices_vector2 <- unique(goal$group_value)


    selectInput("value",
                label = "Value 1",
                choices = choices_vector2)

})

output$skill <- renderUI({
  goal <- BD_2 %>%
    dplyr::filter(Goal == (input$goal), SeriesDescription == (input$description),key == (input$group2))

  selectInput("skill",
              label = "value 2",
              choices = unique(goal$group_value))
})

output$plot_inter <- renderPlotly({
  
  if(input$description != "") {
  seria <- BD_2 %>%
        dplyr::filter(Goal == (input$goal),
                      GeoAreaName %in% input$countries,
                      SeriesDescription == input$description)
  
  p <- plotly::plot_ly(data = seria,
                       y = ~Value,
                       x = ~TimePeriod,
                       color = ~GeoAreaName,
                       type = "scatter",
                       mode = "line+markers") %>%
    layout(title = input$description,
           xaxis=list(range=c(1990,2018),
                      title = "Time"),
           yaxis = list(title = "Value"))
  } else if(input$group != "") {
    seria <- BD_2 %>%
      dplyr::filter(Goal == (input$goal),
                    GeoAreaName %in% input$countries,
                    SeriesDescription == input$description,
                      key == input$group,
                    group_value == input$city)
    p <- plotly::plot_ly(data = seria,
                         y = ~Value,
                         x = ~TimePeriod,
                         color = ~GeoAreaName,
                         type = "scatter",
                         mode = "line+markers") %>%
      layout(title = input$description,
             xaxis=list(range=c(1990,2018),
                        title = "Time"),
             yaxis = list(title = "Value"))
  } else if(input$group2 != "") {
    seria <- BD_2 %>%
      dplyr::filter(Goal == (input$goal),
                    GeoAreaName %in% input$countries,
                    SeriesDescription == input$description,
                      key == input$group,
                      key == input$group2,
                    group_value == input$city,
                    group_value == input$skill)
  
  progress1 <- shiny::Progress$new()
  on.exit(progress1$close())
  progress1$set(message = "waiting", value = 0)
  
  p <- plotly::plot_ly(data = seria,
                  y = ~Value,
                  x = ~TimePeriod,
                  color = ~GeoAreaName,
                  type = "scatter",
                  mode = "line+markers") %>%
    layout(title = input$description,
           xaxis=list(range=c(1990,2018),
                      title = "Time"),
           yaxis = list(title = "Value"))
  n <- 5
  for (i in 1:n) {
    progress1$inc(1/n, detail = "loading", i)
    Sys.sleep(0.1)
  }
  plot$plot <- p
  p
}
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
  
  # dla zmiennej age and sex
  if(input$img_1 == T) {
    seria_2 <- My_SDG %>%
      dplyr::filter(Goal == (input$goal),
                    GeoAreaName %in% input$countries,
                    SeriesDescription == input$description,
                    X.Age. == input$group,
                    X.Sex. == input$group2)
    # dla city wybieranie stolicy
  } else if (input$img_2 == T) {
    seria_2 <- My_SDG %>%
      dplyr::filter(Goal == (input$goal),
                    GeoAreaName %in% input$countries,
                    SeriesDescription == input$description,
                    X.Age. == input$group,
                    X.Bounds. == input$group2) 
  } else if (input$img_3 == T) {
    seria_2 <- My_SDG %>%
      dplyr::filter(Goal == (input$goal),
                    GeoAreaName %in% input$countries,
                    SeriesDescription == input$description,
                    X.Age. == input$group,
                    X.Sex.. == input$group2) 
  } else if (input$img_4 == T) {
    seria_2 <- My_SDG %>%
      dplyr::filter(Goal == (input$goal),
                    GeoAreaName %in% input$countries,
                    SeriesDescription == input$description,
                    X.Type.of.skill. == input$skill,
                    X.Age. == input$group,
                    X.Sex. == input$group2) 
  } else if (input$img_6 == T) {
    seria_2 <- My_SDG %>%
      dplyr::filter(Goal == (input$goal),
                    GeoAreaName %in% input$countries,
                    SeriesDescription == input$description,
                    X.Age. == input$group,
                    X.Location. == input$group2) 
  }
 
 
  # miejsce tworzenia wykresów za pomocą pakiety plotly
  progress1 <- shiny::Progress$new()
  on.exit(progress1$close())
  progress1$set(message = "waiting", value = 0)
  
  plotly::plot_ly(data = seria_2,
                  x = ~TimePeriod,
                  y = ~Value,
                  color = ~GeoAreaName,
                  type = "bar",
                  mode = "marker") %>% 
    layout(title = input$description,
           xaxis=list(range=c(1990,2018),
                      title = "Time"),
           yaxis = list(title = "Value")
    )
  n <- 5
  for (i in 1:n) {
    progress1$inc(1/n, detail = "loading", i)
    Sys.sleep(0.1)
  }
  
})
# testowy wykres właściwe wykresy to liniowy i kolumnowy

