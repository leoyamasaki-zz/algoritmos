#!/usr/bin/ruby
a, b = 0, 1
puts "0: #{a}"
100.times do |n|
     puts "#{n+1}: #{b}"
     a, b = b, a+b
end
