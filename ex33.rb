def while_loop(i, last, inc)
  numbers = []
  while i < last
    puts "At the top i is #{i}"
    numbers.push(i)
  
    i += inc
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
	puts "Incremented by #{inc}"
  end

 # puts "The numbers: "

end

=begin
We could also use a for-loop instead like so:
  (i..last).each do |i|
    puts "At the top i is #{i}"
    numbers.push(i)
  
    i += inc
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
	puts "Incremented by #{inc}"
  end
In this case the increment doesn't work properly since the .each method increments by 1.  Instead we need to use .step():

  (i..last).step(inc) do |i|
    puts "At the top i is #{i}"
    numbers.push(i)
  
    i += inc
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
	puts "Incremented by #{inc}"
  end
=end

puts "How long should I run?"
print "> "
long = $stdin.gets.chomp.to_i
puts "In what increment?"
print "> "
inc = $stdin.gets.chomp.to_i
if inc == 0
  puts "I have to increment by something!"
elsif inc > long
  puts "Can't increment more than the iterations!"
elsif (long < 11) && (inc <= long)
  while_loop(0, long, inc)
else
  puts "Too many increments!"
end