# First we define our different functions, which act as the main branches of the story.
def gold_room
  choice = ""
  puts "\nThis room is full of gold. How many pieces do you take?"
  puts "Enter a number."
  # this is checking to see if choice is a number but I don't quite understand how it works.  trying to learn more.
  print "\n> "
  choice = $stdin.gets.chomp.downcase # user input stored as variable within function
  if choice.include?("0")  || choice.include?("1")
    how_much = choice.to_i
  else
    puts "\nMan, learn to type a number."
	gold_room
  end

  
  if how_much < 50
    puts "\nNice, you're not greedy, you win!"
	exit(0)
  else
    dead("You greedy bastard! You took too much and died trying to carry it out past the bear. \n He's still back there, remember?")
  end
end


def bear_room
  bear_ch = ["Take honey", "Taunt bear", "Open door"]
  puts "\nThere is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  puts ""
  bear_ch.each_with_index do |opt, num|
    puts "#{num + 1}. #{opt}"
  end
  bear_moved = false
  # by setting the bear_moved variable to false and using the if-else statement inside the while block below, we can create a two-step game that has different outcomes with the same input depending upon the order of inputs until we get to false.
  while true
    print "\n> "
	choice = $stdin.gets.chomp.downcase
	# old method I tried to check for text or number
	# elsif (choice == "taunt bear" || choice == "2") && !bear_moved
	  # puts "The bear has moved from the door in shame. You can go through it now."
	  # bear_moved = true
	# below this is the best way to do this (???), I think, although Zed warns against nesting if statements more than 2 deep
	if ["take", "honey", "take honey", "1"].include? choice
	  dead("The bear looks at you then slaps your face off.")
	elsif ["taunt", "taunt bear", "2" ].include? choice
	  if !bear_moved
		puts "\nThe bear has moved from the door in shame. You can go through it now."
		puts ""
	    bear_moved = true
		bear_ch.each_with_index do |opt, num|
          puts "#{num + 1}. #{opt}"
        end
	  else
	    dead("The bear gets pissed off and chews your leg off.")
	  end
	elsif ["open", "open door", "door", "3"].include? choice
	  if !bear_moved
	    dead("\nThe bear doesn't move as you approach until you get too close and it rips your head off.")
	  else
	    gold_room
	  end
	else
	  puts "\nI got no idea what that means."
	end
  end
end


def cthulhu_room
  cth_choice = ["Flee for your life", "Eat your head", "Piddle your pants"]
  puts "\nHere you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you?"
  puts ""
  cth_choice.each_with_index do |opt, num|
    puts "#{num + 1}. #{opt}"
  end
  print "\n> "
  choice = $stdin.gets.chomp.downcase
  
  if ["flee", "1"].include? choice
    start
  elsif ["eat", "head", "2"].include? choice
    dead("Well that was tasty!")
  elsif ["piddle", "pants", "3"].include? choice
    puts "\nNow your trousers smell of urine. And they are wet."
	dead("You have nothing left to live for. So you die.")
  else
    cthulhu_room
  end
end


def dead(why)
  puts "\n" + why, "Good job!"
  puts "\n\n\n----------  GAME  ----------  OVER  ----------"
  puts "\n\n\n"
  exit(0)
end

def start
  door = ["left", "right"]
  puts "\nYou are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"
  puts ""
  # This is a way to print the array elements with its index values
  door.each_with_index do |opt, num|
    puts "#{num + 1}. #{opt}"
  end
  print "\n> "
  choice = $stdin.gets.chomp.downcase
  
  if ["left", "1"].include? choice
    bear_room
  elsif ["right", "2"].include? choice
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

start