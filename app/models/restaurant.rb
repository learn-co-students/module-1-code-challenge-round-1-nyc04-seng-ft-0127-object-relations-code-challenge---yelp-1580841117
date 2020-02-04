class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all
  end

  # `Restaurant#average_star_rating`
  # - returns the average star rating for a restaurant based on its reviews
  # - Reminder: you can calculate
  # the average by adding up all the ratings and dividing by the number of ratings

  def average_star_rating
    ast = Review.all.map do |review| 
      review.rating
    end 
    ast.sum / ast.length 
  end 
  

end