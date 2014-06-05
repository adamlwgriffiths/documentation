using Plotly

using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [8, 7, 6, 5, 4, 3, 2, 1, 0], 
    "type" => "scatter"
  ], 
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "type" => "scatter"
  ]
]
layout = [
  "xaxis" => [
    "showline" => true, 
    "linecolor" => "#636363", 
    "linewidth" => 6, 
    "showgrid" => true, 
    "gridcolor" => "#bdbdbd", 
    "gridwidth" => 2, 
    "zeroline" => true, 
    "zerolinecolor" => "#969696", 
    "zerolinewidth" => 4, 
    "mirror" => "ticks"
  ], 
  "yaxis" => [
    "showline" => true, 
    "linecolor" => "#636363", 
    "linewidth" => 6, 
    "showgrid" => true, 
    "gridcolor" => "#bdbdbd", 
    "gridwidth" => 2, 
    "zeroline" => true, 
    "zerolinecolor" => "#969696", 
    "zerolinewidth" => 4, 
    "mirror" => "ticks"
  ]
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "axes-lines", "fileopt" => "overwrite"])
plot_url = response["url"]