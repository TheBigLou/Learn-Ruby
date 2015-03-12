# define the variable as a number
types_of_people = 10
# define the variable x, call in types_of_people as part of it
x = "There are #{types_of_people} types of people."
# variables as pure strings
binary = "binary"
do_not = "don't"
# calls the string variables within the string defined
y = "Those who know #{binary} and those who #{do_not}."

# puts the x and y string variables
puts x
puts y

# puts the string and calls the variables to put as well
puts "I said: #{x}."
puts "I also said: '#{y}'."

#define var hilarious as false
hilarious = false
# defines the variable with a string and calls the value of hilarious, not a string
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

puts joke_evaluation

w = "This is the let side of..."
e = "a string with a right side."
# shows how you can add string variables together
puts w + e