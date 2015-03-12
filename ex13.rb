first, second, third = ARGV # standard argument variable, this is unpacking it. Similar to gets.chomp but for this it is entered as part of the command line (see below comment)

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# when you run the script you need to pass it variables when executing "e.g. $ ruby ex13.rb first 2nd 3rd"