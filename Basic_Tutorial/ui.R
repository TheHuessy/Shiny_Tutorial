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
                                 h2("How it works"),
                                 h4("Shiny apps are really just HTML translators for R code. It turns the outputs of fucntions into HTML while still allowing JavaScript-like interactivity, all through R. Pretty awesome!"),
                                 h3(strong("Server vs Ui")),
                                 h4("Shiny apps are broken up into two sections: Server and Ui. You'll usually see these sections saved as two different files, but sometimes they are combined into a single file with a wrapping function that just calls them both. If you want to publish a Shiny app online though Rstudio/shinyapps.io, you'll need to have it saved as two files."),
                                 h4("To create your own shiny app, just open RStudio, go to File>>New File>>Shiny Web App..."),
                                 img(src = "Image1.png", width = 1000),
                                 h4("This will bring you to a menu that will ask you what you want to call the app and where you want to put it. Rstudio will then create a directory (in the place you specified) with the various related R files as well as your server.R and ui.R files"),
                                 img(src = "Image2.png", width = 1000),
                                 h4("You will see that it has loaded a pre-written app with a few features. In order to run the app, find the button in the top right of the editor window that says 'Run App'. Click the little dropdown arrow next to it! You'll see that you have a few options to run the app. Whatever you select from the dropdown will be "),
                                 img(src = "Image3.png", width = 1000),
                                 h4("Now you have a functioning shiny app that has reactive user inputs. This means that a user can change the bin size using the slider on the side and the histogram on the righ will update with that information."),
                                 h4("This isn't the most useful thing, however, because it isn't our data and who cares about volcanoes or whatever. Let's try to recreate something like this using our own data! Close out of the app")
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
