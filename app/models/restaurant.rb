class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all # never called but useful for future methods
    @@all
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    reviews.reduce(0) {|sum, review| sum + review.rating}/reviews.length
  end

end
