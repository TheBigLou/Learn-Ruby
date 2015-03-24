ten_things = "Apples Oranges Crows Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(' ') # create an array splitting all the words from ten_things
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items

while stuff.length != 10
  next_one = more_stuff.pop # pop off the last iem in the more_stuff array and store it in next_one
  puts "Adding: #{next_one}"
  stuff.push(next_one) # push the value of next_one into the stuff array
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1] # what does this do?
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join('#')