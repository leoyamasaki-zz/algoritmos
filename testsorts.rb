#!/usr/bin/ruby
require 'rubygems'
require 'gruff'

#Bubble sort
def bubble_sort(list)
  list = list.dup
  for i in 0...list.length
    for j in 0..(list.length - i - 2)
      list[j], list[j + 1] = list[j + 1], list[j]  if list[j + 1] < list[j]
     end
   end
   return list
 end

#Selection sort
def selection_sort(list)
  list.size.times do |start|
    min = start
    start.upto(list.size-1) do |i|
      min = i if list[i] < list[min]
    end
    list[start], list[min] = list[min], list[start]
  end
  list
end

#Generador de las listas de numeros aletorios
def aleatorios(n)
  list = []
  (1..n).each do
    num = (rand*100000+1).to_i
    list.push(num)
  end
  list
end

#Profiler temporizador
class Prof
  attr_accessor :initime, :endtime
  def initialize
    @initime = 0
    @endtime = 0
  end
  def tic()
    @initime=Time.now.to_f
  end
  def toc()
    if @initime==0
      0
    else
      @endtime = sprintf("%.4f",Time.now.to_f - @initime).to_f
    end
  end
end

#Tiempos de algoritmos
tbubble    = []
tselection = []

#Parametros
n_inicial    = 10
n_final      = 500
n_incremento = 10
n_listas = (n_final - n_inicial) / n_incremento

#n long de las listas
n_test = []

#inicia profiler
t = Prof.new

#Loop de prueba
(n_inicial..n_final).step(n_incremento) do |n| 
  print "n=#{n} "
  list = aleatorios(n)
  n_test.push(n)

  #Bubble sort
  t.tic
  bubble_sort(list)
  tbubble.push(t.toc)
  print "Bubble sort #{t.endtime} "

  #Selection sort
  t.tic
  selection_sort(list)
  tselection.push(t.toc)
  print "Selection sort #{t.endtime}\n"
end

#Calcula las etiquetas
labels={}
n_labels = 5
n_inclabels = n_final / n_labels

n_test.each_with_index do |e,i|
  if e == n_inicial or e.modulo(n_inclabels) == 0
    labels[i]=e.to_s
  end
#  if Math.log10(e) == (Math.log10(e)).to_i
#     labels[i]=e.to_s
#  end
end

#Grafica
g = Gruff::Line.new
g.title = "Prueba de Algoritmos de Ordenamiento" 
g.x_axis_label = "n"
g.y_axis_label =  "tiempo (seg)"

g.data("Bubble Sort", tbubble)
g.data("Selection Sort", tselection)

g.labels = labels

#g.theme = {
#   :colors => %w(orange purple green white red),
#   :marker_color => 'blue',
#   :background_colors => %w(grey black)
# }
g.theme_37signals

g.write('grafica.png')

system("eog grafica.png")
