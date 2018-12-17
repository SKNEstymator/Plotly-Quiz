
sidebarLayout(
  sidebarPanel(
    tags$style(type="text/css",
               ".shiny-output-error { visibility: hidden; }",
               ".shiny-output-error:before { visibility: hidden; }"
    ),
    # ułorzenie przycisków na stronie
    div(id = "panel",
        style="text-align: center;",
        h4(textOutput("modalName"))),
    div(id = "upper_panel",
        style="text-align: center;",
        selectInput("goal", 
                    # wybieranie kraju i przypisanie akcji z start_server 
                    label = "Choose goal",
                    choices = c("No poverty" = 1,
                                "Zero hunger" = 2,
                                "Good health and well-being" = 3,
                                "Quality education" = 4,
                                "Gender equality" = 5,
                                "Clean water and sanitation" = 6,
                                "Affordable and clean energy" = 7,
                                "Decent work and economic growth" = 8,
                                "Industry, innovation and infrastructure" = 9,
                                "Reduced inequality" = 10,
                                "Sustainable cities and communities" = 11,
                                "Responsible consumption and production" = 12,
                                "Climate action" = 13,
                                "Life below water" = 14,
                                "Life on land" = 15,
                                "Peace, justice and strong institutions" = 16,
                                "Partnership for the goals" = 17),
                    selected = 1),
        
        # wyświetlenie opcji wyboru opisu w panelu edukacja 
        uiOutput("description"),
        # wyświetlenie opcji wyboru kraju w panelu edukacja
        uiOutput("countries"),
        # wyświetlenie opcji wyboru zmiennej grupującej w panelu edukacja
        uiOutput("group"),
        # wyświetlenie opcji wyboru zmiennej grupującej w panelu edukacja
        uiOutput("group2"),
        # wyświetlenie opcji wyboru wartości zmiennej w panelu edukacja
        uiOutput("value"),
        # wyświetlenie opcji wyboru wartości zmiennej w panelu edukacja
        uiOutput("value2"),
        # pola wyboru opcji wykresu line , bar, scatter
        radioButtons(
          inputId = "chartType",
          label = "Choose chart type!",
          choices = c("line","bar"),
          selected = "line"
          
        )),
    # wyswietlenie informacji o zapisie wykresu
    actionButton("add_my_page", 
                 "Add this plot to your page"),
    br(),
    br(),
    # przycisk zapisu wykresu na zwenętrzny serwer potrzebna zewnętrzna baza danych
    actionButton("save", "Add this chart to quiz")
    
  ),    
  
  
  
  
  
  mainPanel(
    # miejsce wyświetlania opcji wyboru wykresu line
    conditionalPanel(
      condition = "input.chartType == 'line'",
      plotlyOutput("plot_inter")
    ),
    # miejsce wyświetlania opcji wyboru wykresu bar
    conditionalPanel(
      condition = "input.chartType == 'bar'",
      plotlyOutput("plot_bar_inter")
    )
    
  )
)

