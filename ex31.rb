puts "You enter a dark room with two doors. There is a draft from a hole in the wall. Do you go through door #1 or door #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheesecake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."
  puts "3. Curl up in a tiny ball while whimpering and soiling your trousers."
  
  print "> "
  bear = $stdin.gets.chomp
  
  if bear == "1"
    puts "The bear eats your face off. Good job!"
	puts "GAME OVER"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
	puts "GAME OVER"
  elsif bear == "3"
    puts "My god. Get yourself together."
	puts "The bear sneers at you in disgust and ambles off with its cheesecake."
	puts "It seems your cowardice paid off this time."
	puts "I hope you're proud of yourself."
	puts "GAME OVER"
  else
    puts "Well, doing %s is probably better. Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp
  
  if insanity == "1" || insanity == "2"
			# note that 'if insanity == ("1" || "2")' does NOT work, as "1" || "2" always evaluates to "1"
    puts "Your body survives powered by a mind of jello. Good job!"
	puts "GAME OVER"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
	puts "GAME OVER"
  end

else
  puts "Clever girl, sometimes a door is not the only answer."
  puts "You crawl through the small hole in the wall."
  puts "And fall through into a pit of crocodiles."
  puts "Maybe you should have followed the directions?"
  puts "GAME OVER"
end