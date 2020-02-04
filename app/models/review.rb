class Review
    
    attr_reader :customer, :restaurant, :rating
    ALL = []

    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating.to_i
        ALL << self
    end

    def self.all 
        ALL
    end

end