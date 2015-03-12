# prints the statement
puts "I will now count my chickens."

# puts the statement and performs the math
puts "Hens #{25 + 30 / 6}"
puts "Roosters #{100 - 25 * 3 % 4}"

# puts the statement
puts "Now I will count the eggs:"

# puts the math, follows order of operations
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

# puts the text, math not performed since part of string
puts "Is it true that 3 + 2 < 5 - 7?"

# puts the math output
puts 3 + 2 < 5 - 7

# puts the string, math is performed inside the {}
puts "What is 3 + 2? #{3 + 2}"
puts "What is 5 - 7? #{5 - 7}"

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >+ -2}"
puts "Is it less or equal? #{5 <= -2}"