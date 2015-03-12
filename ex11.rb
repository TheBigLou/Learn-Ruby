print "How old are you?"
age = gets.chomp # gets.chomp.to_i would collect it as an integer rather than a string (actually convert it to an integer from a string)
print "How tall are you?"
height = gets.chomp
print "How much do you weigh?"
weight = gets.chomp
puts "So, you're #{age} old, #{height} tall and #{weight} heavy."