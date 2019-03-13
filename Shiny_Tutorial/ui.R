#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(markdown)
library(rmarkdown)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Vanilla Shiny Tutorial"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
        ),

        # Show a plot of the generated distribution
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("General Things/Syntax",
                                 h3("R Shiny Syntax"),
                                 h6("So, real quick, shiny operates off of two files: the Server.R and the Ui.R"),
                                 h6("The Ui.R file handles all of the front end code and the Server.R handles all of the backend/server side code (aren't they clever with their naming conventions!). If you want to do something like fill an area with text, you'll want to do that in the Ui file, just like how this section is hard coded into the Ui file in and around line 30."),
                                 h6("All that shiny is, in essance, is an R to HTML translator. You'll notice that this panel is set up using hX() functions with text as the argument. This is done with h6()"),
                                 h5("This one with h5()"),
                                 h4("h4()"),
                                 h3("h3(), and so on"),
                                 h2("and so forth"),
                                 h1("Amen"),
                                 h4("You can also add breaks, or the HTML equivelent of <br> with the aptly named br() function."),
                                 br(),
                                 h4("Wow! What a break! This page is ugly as sin! You probably won't need to use as much text in one output so we'll just leave it here as this")
                                 ),
                        tabPanel("Sidebar",
                                 h3("Sidebars"),
                                 h4("You'll see that there is a sidebar next to this main panel. All shiny apps are broken up into a main panel and a sidebar. Sidebars can be great for navigation and user inputs. They can also contain text, much like this main panel, as well as acting in a reactive manner based on certain inputs. This is where things get a little more tricky, but fear not, we'll get to it all in due time. \n This!")
                                 
                                 ),
                        tabPanel("Tabs",
                                 h3("TAB STUFF")
                                 ),
                        tabPanel("Uploads and Downloads",
                                 h3("UPLOADS AND DOWNLOADS STUFF")
                                 ),
                        tabPanel("Visualization",
                                 h3("DATA VISUALIZATION STUFF")),
                        tabPanel("Maps (Leaflet)",
                                 h3("COMPLICATED LEAFLET STUFF")),
                        tabPanel("Conditional Elements",
                                 h3("CONDITIONAL ELEMENTS STUFF")),
                        tabPanel("CSS Styling",
                                 h3("CSS STUFF"))
                        )
            
        )
    )
))
