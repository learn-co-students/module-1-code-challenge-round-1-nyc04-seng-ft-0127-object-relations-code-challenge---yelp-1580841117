class Review

        attr_accessor :customer,  
        attr_reader :rating, :restaurant, :review

        @@all = []

    def initialize(customer, restaurant, rating)
        @customer = customer 
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

        def self.all
            @@all
        end

        def rating(number)
            @rating = rating
        end
end