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

  def restaurants
    Review.all.select do |reviews|
      reviews.customer == self
    end.uniq
  end 

  def add_review(restaurant,rating)
    Review.new(self,restaurant,rating)
  end

  def num_reviews
    Review.all.select {|reviews| reviews.customer == self}.count
  end

  def self.find_by_name(fname)
      self.all.find do |customer|
        customer.full_name == fname
    end
  end

  def self.find_all_by_given_name(gname)
    self.all.select do |customer|
      customer.given_name == gname
    end
  end

end
