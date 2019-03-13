
library(shiny)

# Define UI for application that draws a histogram

setwd("H:/My Documents/Git Code Examples/Shiny_Tutorial")
#gms <- read.csv("www/Export_Job.csv")
gms <- read.csv("www/Export_Job.csv")
plat <- as.character(unique(gms$Platform))


shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30),
            selectInput(inputId = "Platforms",
                        label = "Game Platform",
                        choices = plat)
            ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("GAME TABLE"),
            DT::dataTableOutput("Games_T"),
            h3("GAME GRAPH"),
            plotOutput("Games"),
            h3("CHOICES OUTPUT VALUE"),
            textOutput("plats"),
            h3("BINS OUTPUT VALUE"),
            textOutput("input_bins")
            
        )
    )
))
