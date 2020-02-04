require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

james = Customer.new("Park","James")
lucy = Customer.new("Kim","Lucy")
jemy = Customer.new("Chen","Jemy")

silver = Restaurant.new("Silver")
gold = Restaurant.new("Gold")
platinum = Restaurant.new("Platinum")

great_gold = Review.new(jemy,gold,5)
good_gold = Review.new(lucy,gold,4)
average_gold = Review.new(james,gold,3)
great_silver = Review.new(james,silver,5)
good_silver = Review.new(lucy,silver,4)
average_silver = Review.new(jemy,silver,3)

jemy.add_review(platinum,5)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line