require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#leave this here to ensure binding.pry isn't the last line
gur = Customer.new("Gurjot","Sidhu")

sonic = Restaurant.new("sonic")
arby = Restaurant.new("arby")
gur.add_review(arby,3)
gur.add_review(sonic,9)

#p gur.full_name
#p gur.restaurants
#p gur.num_reviews

#p Customer.find_by_name("Gurjot Sidhu") 
#p Customer.find_all_by_given_name("Gurjot")

#p arby.reviews
#p arby.customers

#p arby.average_star_rating