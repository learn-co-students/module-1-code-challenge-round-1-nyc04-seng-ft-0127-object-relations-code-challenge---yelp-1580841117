class Review

    attr_accessor :rating
    attr_reader :customer, :restaurant

    @@all = []
    
    def initialize(customer,restaurant,rating)
        #rating is a number, so it may be an integer
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end
  
end