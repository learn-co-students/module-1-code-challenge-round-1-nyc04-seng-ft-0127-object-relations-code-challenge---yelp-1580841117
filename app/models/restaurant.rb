class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |r|
      r.restaurant == self
    end
  end

  def customers
    reviews.map do |c|
      c.customer.full_name
    end
  end

end
