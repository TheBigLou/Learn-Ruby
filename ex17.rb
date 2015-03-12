from_file, to_file = ARGV # so we'll be copying from the first file to the second based on command-line input

puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line, how?
in_file = open(from_file) # create in_file variable from opening the 1st file
indata = in_file.read # now we create the string variable by reading in_file

puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file)}" #checks for the existence of to_file
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w') # open/create the destination file for write
out_file.write(indata) # write the string data from indata into the out_file variable and thus to the to_file

puts "All right, all done."

out_file.close
in_file.close