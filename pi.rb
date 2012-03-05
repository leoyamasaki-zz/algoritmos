#!/usr/bin/ruby
SCALE = 10000
ARRINIT = 2000
def pi_digits(digits)
  pi = ""
  carry = 0
  arr = Array.new(digits + 1, ARRINIT)
  digits.step(1, -14) do |i|
    sum = 0
    i.downto(1) do |j|
      sum = sum * j + SCALE * arr[j]
      arr[j] = sum % (j * 2 - 1)
      sum /= j * 2 - 1
    end
    pi << sprintf("%04d", carry + sum / SCALE)
    carry = sum % SCALE;
  end
  pi
end

puts pi_digits(1000)
