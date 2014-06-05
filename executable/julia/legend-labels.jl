using Plotly

using Plotly
Plotly.signin("test-runner", "9h29fe3l0x")

data = [
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [0, 3, 6, 4, 5, 2, 3, 5, 4], 
    "name" => "Orange Trace", 
    "type" => "scatter"
  ], 
  [
    "x" => [0, 1, 2, 3, 4, 5, 6, 7, 8], 
    "y" => [0, 4, 7, 8, 3, 6, 3, 3, 4], 
    "name" => "Blue Trace", 
    "type" => "scatter"
  ]
]

response = Plotly.plot([data], ["filename" => "legend-labels", "fileopt" => "overwrite"])
plot_url = response["url"]