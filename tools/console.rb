require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

tom = Customer.new("Thomas", "Campbell")
john = Customer.new("John", "Greeley")
alice = Customer.new("Alice", "Brock")
kevin = Customer.new("Kevin", "Campbell")
brian = Customer.new("Brian", "Campbell")
katy = Customer.new("Katy", "Weng")
yuan = Customer.new("Katy", "Weng")

aoyu = Restaurant.new("Aoyu")
grimaldi = Restaurant.new("Grimaldi's")
choc = Restaurant.new("ChocNYC")

Review.new(tom, aoyu, 5)
Review.new(katy, aoyu, 5)
Review.new(tom, aoyu, 4)
Review.new(john, grimaldi, 3)
Review.new(brian, choc, 5)
Review.new(kevin, choc, 4)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line