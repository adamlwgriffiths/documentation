using Plotly

using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [1, 2, 3], 
    "y" => [4, 5, 6], 
    "type" => "scatter"
  ], 
  [
    "x" => [20, 30, 40], 
    "y" => [50, 60, 70], 
    "xaxis" => "x2", 
    "yaxis" => "y2", 
    "type" => "scatter"
  ], 
  [
    "x" => [300, 400, 500], 
    "y" => [600, 700, 800], 
    "xaxis" => "x3", 
    "yaxis" => "y3", 
    "type" => "scatter"
  ], 
  [
    "x" => [4000, 5000, 6000], 
    "y" => [7000, 8000, 9000], 
    "xaxis" => "x4", 
    "yaxis" => "y4", 
    "type" => "scatter"
  ]
]
layout = [
  "xaxis" => ["domain" => [0, 0.45]], 
  "yaxis" => ["domain" => [0, 0.45]], 
  "xaxis4" => [
    "domain" => [0.55, 1], 
    "anchor" => "y4"
  ], 
  "xaxis3" => [
    "domain" => [0, 0.45], 
    "anchor" => "y3"
  ], 
  "xaxis2" => ["domain" => [0.55, 1]], 
  "yaxis2" => [
    "domain" => [0, 0.45], 
    "anchor" => "x2"
  ], 
  "yaxis3" => ["domain" => [0.55, 1]], 
  "yaxis4" => [
    "domain" => [0.55, 1], 
    "anchor" => "x4"
  ]
]

response = Plotly.plot([data], ["layout" => layout, "filename" => "multiple-subplots", "fileopt" => "overwrite"])
plot_url = response["url"]