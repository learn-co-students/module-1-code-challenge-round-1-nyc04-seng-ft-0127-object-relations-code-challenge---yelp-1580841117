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

  def reviews
  review.all.select do |restaurant|
    review.restaurant == self
  end

  def customers
    review.map do |restaurant|
      reviews.customers
    end
  end

end
