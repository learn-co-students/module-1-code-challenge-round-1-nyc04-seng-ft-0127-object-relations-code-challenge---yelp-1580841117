class Review
  
    attr_reader :customer, :restaurant
    attr_accessor :rating

    @@all = []
 
#- `Review#initialize`
#- Reviews should be initialized with a customer, restaurant, and a rating (a #number)
   def initialize(customer, restaurant, rating)
       @customer = customer
       @restaurant = restaurant
       @rating = rating
       @@all << self

   end
   def self.all
#  - `Review.all`
 # - returns all of the reviews

       @@all
   end
   def rating(rest)
#  - `Review#rating`
 # - returns the rating for a restaurant.
    #    @@all.select do |review| 
    #            review.restaurant == rest

       end
   end
   def review_by_customer
#  - `Review#customer`
#  - returns the customer object for that review
#  - Once a review is created, should not be able to change the customer
       @@all.select do |review|
             review.customer == self.customer
       end
   end
   def review_by_restaurant
#    - `Review#restaurant`
#    - returns the restaurant object for that given review
#    - Once a review is created, should not be able to change the restaurant
       @@all.select do |review|
             review.restaurant == self.restaurant
       end
   end



end












