
library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    d <- read.csv('www/Export_Job1.csv', stringsAsFactors = FALSE)
    d$phrase_fact <- factor(d$score_phrase, levels = c("Disaster",
                                                       "Unbearable",
                                                       "Painful",
                                                       "Awful",
                                                       "Bad",
                                                       "Mediocre",
                                                       "Okay",
                                                       "Good",
                                                       "Great",
                                                       "Amazing",
                                                       "Masterpiece"), ordered = TRUE)
    dpick <- reactive({d[which(d$platform == input$Platforms),]})

    output$input_bins <- renderText({
        c <- input$bins
        c
    })
    output$plats <- renderText({
        b <- input$Platforms
        b
    })
    output$Games_T <- DT::renderDataTable(DT::datatable({
        dpick() %>% 
            gather
        
    }))
     output$Games <- renderPlot({
         g <- ggplot(data = dpick(), aes(x = phrase_fact)) + stat_count()
         g + labs(title = paste("Number of Games by Rating for", input$Platforms),
                  x = "Score",
                  y = "Number of Games")
     })
    

})
