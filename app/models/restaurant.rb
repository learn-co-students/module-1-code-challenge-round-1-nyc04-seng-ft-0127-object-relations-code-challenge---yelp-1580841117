class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.map do |reviews|
      reviews.restaurant == self
    end
  end

  def ratings
    reviews.select do |review|
      review.rating
    end
  end

  def customers
    reviews.select do |reviews|
      reviews.customer
    end.uniq
  end

  def average_star_rating
    ratingtotal = 0
    ratings.select do |rating|
      ratingtotal += rating
    end
    ratingtotal/ratings.length
  end

end
