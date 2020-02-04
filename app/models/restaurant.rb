class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.map{|review| review.customer}.uniq
  end

  def ratings
    self.reviews.map{|review| review.rating}
  end

  def average_star_rating
    self.ratings.reduce(0.0){|sum, rating| sum + rating} / self.reviews.length
  end

end
