class Customer
  attr_accessor :given_name, :family_name

  @@all = []

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def restaurant
    reviews.all.select do |restaurant|
      review.customer == self
  end

  def add_review(restaurant, rating)
      review.new
  end
end
