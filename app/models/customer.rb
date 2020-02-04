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

  def restaurants
    Review.all.select {|review| review.restaurant == self}.uniq
  end

  def add_review(restaurant, rating) # Do not allow a review to be added unless a valid rating is given
    if rating > 5 || rating < 0
      return "Please give a rating between 0 and 5 stars."
    end
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    Review.all.reduce(0) {|num, review| review.customer == self ? num + 1 : num}
  end

  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_given_name(name)
    self.all.select {|customer| customer.given_name == name}
  end
end
