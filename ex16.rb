# Making a simple text editor.

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w') # 'w' tells system to open in write mode

puts "Truncating the file. Goodbye!"
target.truncate(0) # this is actually redundant since we opened in w mode (could also do 'a' for append and add to it instead)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

=begin this version is inefficient, no need for more than one target.write...
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
=end

target.write(line1 + "\n" + line2 + "\n" + line3 + "\n") #better code that only uses one line

puts "And finally, we close it."
target.close

# Extra credit: open and print contents to screen

target_again = open(filename)

puts "Bonus: here's what you wrote to #{filename}, double-check your work!"
puts target_again.read
target_again.close