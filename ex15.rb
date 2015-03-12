# In this script we will open another file and display the contents. The point of the exercise is to *not* hardcode in the filename, but rather prompt the user to enter the name of the file to be opened via ARGV.

# first we define a filename variable and prompt for it in the command line
filename = ARGV.first

# next we define a new txt variable and define it as the contents of filename (by using the open command)
txt = open(filename)

# then we do a quick printout of the name
puts "Here's your file #{filename}:"
# and put out the actual contents of the original file, stored in the txt variable, using the .read method
puts txt.read
txt.close # closing the file

print "Type the filename again: "
file_again = $stdin.gets.chomp #stdin tells ruby to look at user input.  Using gets.chomp on its own would first look to ARGV.  IMPORTANT TO REMEMBER

# this does the same as the above, showing that we now have a separate variable looking at the same original file based upon typing in that name inside the script instead of at the command line ($stdin.gets.chomp vs. ARGV)
txt_again = open(file_again)

print txt_again.read

txt_again.close