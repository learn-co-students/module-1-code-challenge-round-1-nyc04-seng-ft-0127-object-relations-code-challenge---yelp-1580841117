class Review
attr_reader :customer, :restaurant, :rating
@@all = []
  
    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end
    
    def rating
        @rating
    end

    def self.all
        @@all
    end

    def customer
      Customer.all  
    end
end