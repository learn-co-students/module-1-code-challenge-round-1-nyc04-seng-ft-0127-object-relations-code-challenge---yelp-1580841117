class Review
  attr_reader :customer, :restaurant, :rating

    @@all = []

  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating.to_f # ratings can't be changed even if the customer changes their mind later
    @@all << self
  end

  def self.all
    @@all
  end

end