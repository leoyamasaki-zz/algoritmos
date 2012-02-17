#!/usr/bin/ruby

if ARGV.length == 0
  puts "Uso bin2dec numero\n"
  exit  
end

binario = ARGV[0].reverse

puts "Convierte #{binario} a decimal\n"

decimal = 0

for i in 0..binario.length - 1
  if binario[i].chr == "1"
    decimal = decimal + 2**i
  end
#  puts "digitos #{i} de #{binario[i].chr} y vale #{2**i} llevo #{decimal}\n"
end

puts "Binario #{binario.reverse} = #{decimal}\n"

exit
