class Restaurant
  attr_reader :name
  ALL = []


  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all 
    ALL
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end.uniq # sorry, I know this looks ugly
  end

  def average_star_rating
    sum = 0
    reviews.map do |review|
      sum += review.rating
    end
    sum / reviews.length.to_f
  end

end
