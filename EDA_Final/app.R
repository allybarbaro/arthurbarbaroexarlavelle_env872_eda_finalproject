#### Load packages ----
library(shiny)
library(shinythemes)
library(tidyverse);library(lubridate)

#### Load data ----

carteret.race <- read_csv('./Data/Processed/Carteret.race.csv')
carteret.poverty <- read_csv('./Data/Processed/Carteret.poverty.csv')
carteret.employment <- read_csv('./Data/Processed/Carteret.Employment.csv')
carteret.age.sex <- read_csv('./Data/Processed/Carteret.age.sex.csv')
carteret.hurricanes <- read_csv('./Data/Processed/Carteret_Hurricanes_Processed.csv')
carteret.hurricanes <- read_csv('./Data/Processed/Carteret_Flooding_Processed.csv')
carteret_shape_correct <- st_read('./Data/Processed/carteret_tracts.shp')

#### Define UI ----
ui <- fluidPage(theme = shinytheme("yeti"),
                titlePanel("Hurricane and Flood Risk in Carteret County, NC"),
                sidebarLayout(
                  sidebarPanel(
                    
                    # Select event to plot
                    selectInput(inputId = "y", 
                                label = "Nutrient",
                                choices = c("tn_ug", "tp_ug", "nh34", "no23", "po4"), 
                                selected = "tp_ug"),
                    
                    # Select depth
                    checkboxGroupInput(inputId = "fill",
                                       label = "Depth ID",
                                       choices = unique(nutrient_data$depth_id),
                                       selected = c(1, 7)),
                    
                    # Select lake
                    checkboxGroupInput(inputId = "shape",
                                       label = "Lake",
                                       choices = c("Peter Lake", "Paul Lake"),
                                       selected = "Peter Lake"),
                    
                    # Select date range to be plotted
                    sliderInput(inputId = "x",
                                label = "Date",
                                min = as.Date("1991-05-01"),
                                max = as.Date("2016-12-31"),
                                value = c(as.Date("1995-01-01"), as.Date("1999-12-31")))),
                  
                  # Output
                  mainPanel(
                    plotOutput("scatterplot", brush = brushOpts(id = "scatterplot_brush")), 
                    tableOutput("mytable")
                  )))

#### Define server  ----
server <- function(input, output) {
  
  # Define reactive formatting for filtering within columns
  filtered_nutrient_data <- reactive({
    nutrient_data %>%
      filter(sampledate >= input$x[1] & sampledate <= input$x[2]) %>%
      filter(depth_id %in% input$fill) %>%
      filter(lakename %in% input$shape) 
  })
  
  # Create a ggplot object for the type of plot you have defined in the UI  
  output$scatterplot <- renderPlot({
    ggplot(filtered_nutrient_data(), 
           aes_string(x = "sampledate", y = input$y, 
                      fill = "depth_id", shape = "lakename")) +
      geom_point(alpha = 0.8, size = 2) +
      theme_classic(base_size = 14) +
      scale_shape_manual(values = c(21, 24)) +
      labs(x = "Date", y = expression(Concentration ~ (mu*g / L)), shape = "Lake", fill = "Depth ID") +
      scale_fill_distiller(palette = "YlOrBr", guide = "colorbar", direction = 1)
    #scale_fill_viridis_c(option = "viridis", begin = 0, end = 0.8, direction = -1)
  })
  
  # Create a table that generates data for each point selected on the graph  
  output$mytable <- renderTable({
    brush_out <- brushedPoints(filtered_nutrient_data(), input$scatterplot_brush)
  })
  
}


#### Create the Shiny app object ----
shinyApp(ui = ui, server = server)
