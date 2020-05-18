library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Tipo de distribuciones"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            
            checkboxGroupInput("b1","Boton de check multiple",
                               choices = c("Normal","uniforme","exponencial")),
            radioButtons("b2","departamento",choices = c("Normal","uniforme","exponencial"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            plotOutput("distPlot1")
        )
    )
))
