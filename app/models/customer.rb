class Customer
  attr_accessor :given_name, :family_name
  
  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def r_restaurants
    Review.all.select do |r|
      r.restaurant.name
    end
  end

  def restaurants
    r_restaurants.map do |r|
      r.restaurant
    end
  end

  def r_reviews
    r_restaurants.map do |r|
      r.rating
    end
  end

  def num_reviews
    total = 0
    r_reviews.each do |r|
      if r > 1
        total += 1
      end
    end
    return total
  end

  def self.find_by_name(name)
    self.all.select do |n|
      n.full_name
    end
  end

  def find_all_by_given_name(name)
    self.all.select do |n|
      n.full_name.split == given_name
    end
  end
end
