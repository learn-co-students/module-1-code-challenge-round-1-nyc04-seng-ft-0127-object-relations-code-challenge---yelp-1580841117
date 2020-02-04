class Restaurant
    ALL = []
    attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all 
    ALL 
  end 

  def reviews 
    Restaurant.all.select do |review|
    review.Restaurant == self 
    end 
  end 





  # def average_star_rating
  # end 

  def reviews 
    Review.all.select do |reviews|
    reviews.resturant
    end 
  
  end 

  # def customers
  # end 


end
