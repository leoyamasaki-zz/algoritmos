require 'rubygems'
require 'scruffy'

graph = Scruffy::Graph.new
graph.title = "Ejemplo Grafica de Lineas"
graph.renderer = Scruffy::Renderers::Standard.new

graph.add :line, 'Eemplo', [20, 100, 70, 30, 106]

graph.render :to => "lineas.svg"
graph.render :width => 300, :height => 200,:to => "lineas.png", :as => 'png'
