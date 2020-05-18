library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$distPlot <- renderPlot({
        x<-rnorm(1000,mean = 10,15)
        y<-runif(1000,0,500)
        z<-rexp(1000,100)
        hist(x,ann=F,axes = F)

        if(input$b1=="Normal"){
            plot(density(x))
            if(input$b1=="uniforme"){
                points(density(y),col="red")
                if(input$b1=="exponencial"){
                    points(density(z),col="blue")
                }
            }
            
        }
    })
    output$distPlot1 <- renderPlot({
        x<-rnorm(1000,mean = 10,15)
        y<-runif(1000,0,500)
        z<-rexp(1000,100)
        hist(x,ann=F,axes = F)
        
        if(input$b2=="Normal"){
            hist(x)
        }else{
            if(input$b2=="uniforme"){
                hist(y,col="purple")
            }else{
                if(input$b2=="exponencial"){
                    hist(z,col="blue")
                }
                
            }
        }
    })
    
    
})

