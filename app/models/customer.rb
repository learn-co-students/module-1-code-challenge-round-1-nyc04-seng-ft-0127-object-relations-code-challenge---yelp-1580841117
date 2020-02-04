class Customer
  attr_accessor :given_name, :family_name
  ALL = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    ALL << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all 
    ALL
  end

  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def my_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    my_reviews.map do |review|
      review.restaurant
    end.uniq # sorry, I know this looks ugly
  end

  def num_reviews
    my_reviews.length
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    self.all.select do |customer|
      customer.given_name  == name
    end
  end

end
