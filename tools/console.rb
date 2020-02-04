require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Phillip", "Henry III")
c2 = Customer.new("Michael", "Jackson")
c3 = Customer.new("Gordon", "Ramsay")

r1 = Restaurant.new("Cheesecake Factory")
r2 = Restaurant.new("Moe's")
r3 = Restaurant.new("Outback")

rev1 = Review.new(c1, r1, 45)
rev2 = Review.new(c1, r2, 67)
rev3 = Review.new(c1, r3, 82)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line