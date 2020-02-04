class Review
  attr_reader :customer, :restaurant, :rating # ratings can't be changed even if the customer changes their mind later

    @@all = []

  def initialize(customer, restaurant, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating.to_f 
    @@all << self
  end

  def self.all
    @@all
  end

end