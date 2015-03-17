def cheese_and_crackers(cheese_count, boxes_of_crackers) # defines our function with placeholder arguments and tells it to put some text to screen
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end


puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30) # calls the function with these integers


puts "OR, we can use the variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers) # calls the function and uses the values of the variables defined above


puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6) # just does the math inside the () before executing the function


puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000) # similar to above, this time brings in variables values, does the math, then runs the function