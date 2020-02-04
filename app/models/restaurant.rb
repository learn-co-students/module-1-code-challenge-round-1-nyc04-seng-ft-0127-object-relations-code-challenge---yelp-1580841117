class Restaurant
  attr_reader :name
#  - `Restaurant#name`
 # - returns the restaurant's name
 # - should not be able to change after the restaurant is created


# - `Restaurant#initialize`
#- Restaurants should be initialized with a name, as a string
  def initialize(name)
    @name = name



  end
  def reviews
#  - `Restaurant#reviews`
#  - returns an array of all reviews for that restaurant
      Review.all.select do |review| 
             review.restaurant == self.restaurant
      end
  end
  def customers
#   - `Restaurant#customers`
#  - Returns a **unique** list of all customers who have reviewed a particular #restaurant.
      self.reviews.map { |review| review.customer }.uniq
  end




end






