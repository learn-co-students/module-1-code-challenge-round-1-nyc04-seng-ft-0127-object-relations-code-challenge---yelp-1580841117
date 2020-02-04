class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @all.map{|restaurant|restaurant.name} 
  end 

  def self.all 
    @@all 
  end 

  def reviews
    Review.all.select{|review| review.restaurant}
  end 

  def customers 
    Customer.all.select{|customers|customers.rate == self}uniq 
  end 

  def average_star_rating
    @@all.reduce(0){|sum,n| sum + n.rate.to_f / self.rate.length}
  end 

end
