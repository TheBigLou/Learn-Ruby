# a typical use for ARGV is when you are passing in the variable prior to running the script.  This may be more efficient than doing a prompt + gets.chomp within the course of the script itself.  Makes extra sense if the computations are heavy, so you can put in everything up front and let it run rather than potentially waiting time between each prompt. Found in a situation where you're running from the command line.

user_name = ARGV.first

prompt = '> '

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? ", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? ", prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
All right, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""