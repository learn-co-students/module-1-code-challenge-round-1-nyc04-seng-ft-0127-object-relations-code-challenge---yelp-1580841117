require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("john", "the fockers")
c2 = Customer.new("stewie", "the griffins")
c3 = Customer.new("kevin", "the culkins")

rs1 = Restaurant.new("Pedros")
rs2 = Restaurant.new("mona lisa")
rs3 = Restaurant.new("beach wood")

r1 = Review.new(c1, rs1, 5)
r2 = Review.new(c2, rs2, 3)
r3 = Review.new(c3, rs3, 4)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line