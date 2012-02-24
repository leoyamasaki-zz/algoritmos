#!/usr/bin/ruby
# http://www.github.com/leoyamasaki
#git clone git://github.com/leoyamasaki/algoritmos.git
if ARGV.length == 0
  puts "Uso dec2bin numero\n"
  exit  
end

decimal = ARGV[0].to_i
binario = ""
puts "Convierte #{decimal} a binario\n"
resto = decimal
while resto > 0
  binario = resto.modulo(2).to_s + binario
  resto = resto / 2
 resto.modulo(2).to_s + "\n"
end

puts "Decimal #{decimal} = #{binario}\n"
