class Review
    ALL = []
    attr_reader :resturant 
    def initialize
        @customer = customer 
        @resturant = resturant 
        @rating = rating
    end 

    def rating 
        Restaurant.rating. select do |ratings|
            ratings.resturant == self
        end 
    end 

    def self.all 
        ALL 
    end 

    def customer 
        Customer.add_review.select do |reviwes|
        end
    end 

    def resturant 
        Restaurant.reviews.select do |resturants|
            resturant.resturant == self 
        end 
    end 
end