#!/usr/bin/ruby
n=0
while n<=0
  puts "Dame el numero de aleatorios a generar:"
  n = gets.chomp.to_i
  if n <= 0
     puts "No la friegues pon un numero"
  end
end
(1..n).each do
  puts (rand*100+1).to_i.to_s + " "
end


