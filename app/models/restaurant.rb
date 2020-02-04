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

  def restaurant_name
    self.name
  end

  def our_reviews
    store_reviews = Review.all.select{|review| review.restaurant == self}
  end

end
