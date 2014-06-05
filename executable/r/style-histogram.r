library(plotly)

p <- plotly(username='test-runner', key='9h29fe3l0x')

x0 = rnorm(500)
x1 = rnorm(500)+1

trace1 <- list(
  x = x0, 
  name = "control", 
  marker = list(
    line = list(
      color = "grey", 
      width = 0
    ), 
    color = "fuchsia", 
    opacity = 0.75
  ), 
  autobinx = FALSE, 
  xbins = list(
    start = -3.2, 
    end = 2.8, 
    size = 0.2
  ), 
  histnorm = "count", 
  type = "histogram"
)
trace2 <- list(
  x = x1, 
  name = "experimental", 
  marker = list(color = "rgb(255, 217, 102)"), 
  opacity = 0.75, 
  autobinx = FALSE, 
  xbins = list(
    start = -1.8, 
    end = 4.2, 
    size = 0.2
  ), 
  type = "histogram"
)

layout <- list(
  title = "Sampled Results", 
  xaxis = list(title = "Value"), 
  yaxis = list(title = "Count"), 
  barmode = "overlay", 
  bargap = 0.25, 
  bargroupgap = 0.3, 
  bardir = "v"
)



response <- p$plotly(trace0, trace1, kwargs=list(layout=layout, filename="style-histogram", fileopt="overwrite"))
url <- response$url
filename <- response$filename