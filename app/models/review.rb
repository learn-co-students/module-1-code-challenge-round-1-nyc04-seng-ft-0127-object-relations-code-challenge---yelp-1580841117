class Review
    @@all = []
  attr_accessor :restaurant, :customer
  attr_reader :rate 

  def initialize(restaurant,customer,rate)
    @restaurant = restaurant
    @customer = customer
    @rate = rate
    @@all << self 
  end 

  def rating 
    Restaurant.all.select{|rate| rate.name == self.rate}
  end
  
  def self.all 
      @@all 
  end 

  def customer
    @all.map{|customer|customer.rate}
  end 
  
  def 
  
end