#!/usr/bin/ruby

require 'rubygems'
require 'gruff'

g = Gruff::Line.new
g.title = "Frutas" 

g.data("Manzanas", [1, 2, 3, 4, 4, 3])
g.data("Naranjes", [4, 8, 7, 9, 8, 9])
g.data("Sandias", [2, 3, 1, 5, 6, 8])
g.data("Duranznos", [9, 9, 10, 8, 7, 9])

g.labels = {0 => '2003', 2 => '2004', 4 => '2005'}

g.write('grafica.png')
system("eog grafica.png")
