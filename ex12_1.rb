# This script asks for money and gives back 10% in change. It demonstrates the use of the .to_f method (convert to floating point integer from string).

print "Give me some money, please: $"
payment = gets.chomp.to_f
change = payment * 0.1
change_r = change.round(2) # this rounds to the nearest n digit for round(n)
puts "Here is your change: $#{change_r}."