require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

abid = Customer.new("Abid", "Talukdar")
abid2 = Customer.new("Abid", "Blah")
abid3 = Customer.new("Abid", "Hi")
tom = Customer.new("Thomas", "Cantwell")
gurjot = Customer.new("Gurjot", "Singh")
syed = Customer.new("Syed", "Hasan")

# pp Customer.all

milk_n_honey = Restaurant.new("Milk'n'Honey")
emmy = Restaurant.new("Emmy Squared")
river = Restaurant.new("River Cafe")
luluc = Restaurant.new("Cafe Luluc")
clover = Restaurant.new("Clover Club")

# pp Restaurant.all

abid.add_review(milk_n_honey, 8)
abid.add_review(emmy, 10)
abid.add_review(river, 9)
abid.add_review(luluc, 8)
abid.add_review(clover, 8)
abid.add_review(emmy, 11)
abid.add_review(river, 100)
abid.add_review(luluc, 6)

syed.add_review(milk_n_honey, 10)
syed.add_review(emmy, 10)
syed.add_review(river, 10)
syed.add_review(luluc, 10)
syed.add_review(clover, 10)

tom.add_review(milk_n_honey, 7)
tom.add_review(emmy, 10)
tom.add_review(river, 8)
tom.add_review(luluc, 6)
tom.add_review(clover, 7)

gurjot.add_review(milk_n_honey, 6)
gurjot.add_review(emmy, 8)
gurjot.add_review(river, 8)
gurjot.add_review(luluc, 3)
gurjot.add_review(clover, 4)


# CUSTOMER METHODS
# pp gurjot.restaurants
# p tom.num_reviews
# p abid.num_reviews
# p Customer.find_by_name("Syed Hasan")
# p Customer.find_by_name("Thomas Cantwell")
# pp Customer.find_all_by_given_name("Abid")

# RESTAURANT METHODS

# pp emmy.customers

# pp abid.num_reviews

# p river.average_star_rating