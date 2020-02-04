class Review

    attr_reader :customer, :rating, :restaurant

    @@all = []

    def initialize(customer,restaurant,rating)
        @customer = customer
        @rating = rating
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end
    
end