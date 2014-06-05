using Plotly

using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

x0 = randn(500)
x1 = randn(500)+1

data = [
  [
    "x" => x0, 
    "name" => "control", 
    "marker" => [
      "line" => [
        "color" => "grey", 
        "width" => 0
      ], 
      "color" => "fuchsia", 
      "opacity" => 0.75
    ], 
    "autobinx" => false, 
    "xbins" => [
      "start" => -3.2, 
      "end" => 2.8, 
      "size" => 0.2
    ], 
    "histnorm" => "count", 
    "type" => "histogram"
  ], 
  [
    "x" => x1, 
    "name" => "experimental", 
    "marker" => ["color" => "rgb(255, 217, 102)"], 
    "opacity" => 0.75, 
    "autobinx" => false, 
    "xbins" => [
      "start" => -1.8, 
      "end" => 4.2, 
      "size" => 0.2
    ], 
    "type" => "histogram"
  ]
]
layout = [
  "title" => "Sampled Results", 
  "xaxis" => ["title" => "Value"], 
  "yaxis" => ["title" => "Count"], 
  "barmode" => "overlay", 
  "bargap" => 0.25, 
  "bargroupgap" => 0.3, 
  "bardir" => "v"
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "style-histogram", "fileopt" => "overwrite"])
plot_url = response["url"]