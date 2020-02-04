require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

flatiron = Restaurant.new("Flatiron")
deli = Restaurant.new("Corner Deli")
york = Restaurant.new("York St Station")

mavi = Customer.new("Mavi", "T-P")
firuz = Customer.new("Firuz", "Firuzlastname")
doppel = Customer.new("Mavi", "secondmavi")

Review.new(mavi, flatiron, 1)
Review.new(mavi, flatiron, 2)
Review.new(firuz, deli, 3)
Review.new(doppel, flatiron, 4)
Review.new(mavi, york, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line