require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

0 #leave this here to ensure binding.pry isn't the last line


firuz = Customer.new("firuz","afza")
mavi = Customer.new("mavi","afig")
abid = Customer.new("abid","abdul")
tom = Customer.new("tom","jerry")


nusret = Restaurant.new("nusret")
cafe = Restaurant.new("cafe")
emir = Restaurant.new("emir")


customer_one = Review.new(nusret,firuz,1)
customer_two = Review.new(cafe,mavi,2)
customer_three = Review.new(emir,abid,1)
customer_forth = Review.new(emir,firuz,4)

binding.pry
