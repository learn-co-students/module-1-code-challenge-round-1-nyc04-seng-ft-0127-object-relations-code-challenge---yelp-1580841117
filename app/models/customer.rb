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
  `Customer#num_reviews`
  # - Returns the total number of 
  # reviews that a customer has authored

  def num_reviews
    Review.all.select {|review| review.customer == self }.length
  end
  # `Customer.find_by_name(name)`
  # - given a string of a **full name**,
  #  returns the **first customer** whose full name matches

  def self.find_by_name(name)
    Customer.all.find do |n| n
    end


  end


end
