def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b # return is actually superfluous here as Ruby will implicity return the last expression
end

def subtract(a, b)
  puts "SUBTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MUTIPLYING #{a} * #{b}"
  return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# Extra credit
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

=begin
This is just algebra.
age = 35, height = 74, weight = 180, iq = 50
what = add(35, subtract(74, multiply(180, divide(50, 2))))
what = add(35, subtract(74, multiply(180, 25)))
what = add(35, subtract(74, 4500))
what = add(35, -4426)
what = -4391
Or, arranged differently: what = 35 + (74 - 180*(50/2))
=end

# Let's try another formula: (75 - (26 / (3 + 2))) * 98
puts "The formula (75 - (26 / (3 + 2))) * 98 becomes:"
another = multiply(98.00, subtract(75.00, divide(26.00, add(3.00, 2.00))))

puts "With a result of #{another}."