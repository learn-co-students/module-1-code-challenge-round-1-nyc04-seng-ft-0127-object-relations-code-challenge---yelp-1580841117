class Review
 attr_reader :customer, :restaurant, :rating 

 @@all = []
    def initialize(customer,restaurant, rating )
        @customer = customer 
        @restaurant = restaurant 
        @rating = rating 
        @@all << self 
    end

    def self.all 
        @@all 
    end

#     returns the customer object for that review
#   - Once a review is created, should not be 
#   able to change the customer
   



  
end