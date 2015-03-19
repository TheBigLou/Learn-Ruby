# First we define our different functions, which act as the main branches of the story.
def gold_room
  puts "This room is full of gold. How much do you take?"
  
  print "> "
  choice = $stdin.gets.chomp # user input stored as variable within function
   # this is checking to see if choice is a number but I don't quite understand how it works.  trying to learn more.
  if choice.include?("0")  || choice.include?("1")
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end
  
  if how_much < 50
    puts "Nice, you're not greedy, you win!"
	exit(0)
  else
    dead("You greedy bastard!")
  end
end


def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  puts "\n\t1. Take honey"
  puts "\t2. Taunt bear"
  puts "\t3. Open door\n"
  bear_moved = false
  # by setting the bear_moved variable to false and using the if-else statement inside the while block below, we can create a two-step game that has different outcomes with the same input depending upon the order of inputs until we get to false.
  while true
    print "> "
	choice = $stdin.gets.chomp.downcase
	# old method I tried to check for text or number
	# elsif (choice == "taunt bear" || choice == "2") && !bear_moved
	  # puts "The bear has moved from the door in shame. You can go through it now."
	  # bear_moved = true
	# this is the best way to do this, I think	
	if ["take", "honey", "take honey", "1"].include? choice
	  dead("The bear looks at you then slaps your face off.")
	elsif ["taunt", "taunt bear", "2" ].include? choice
	  if !bear_moved
		puts "The bear has moved from the door in shame. You can go through it now."
	    bear_moved = true
	  else
	    dead("The bear gets pissed off and chews your leg off.")
	  end
	elsif ["open", "open door", "door" "3"].include? choice
	  if !bear_moved
	    dead("The bear doesn't move as you approach until you get too close and it rips your head off.")
	  else
	    gold_room
	  end
	else
	  puts "I got no idea what that means."
	end
  end
end


def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"
  
  print "> "
  choice = $stdin.gets.chomp
  
  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end


def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"
  
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start