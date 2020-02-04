class Customer
  ALL =[]
  attr_accessor :given_name, :family_name, :num_reviews 

  def initialize(given_name, family_name, num_reviews)
    @given_name = given_name
    @family_name  = family_name
    @customer = customer
    @num_reviews = num_reviews
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def given_name
    Customer.all.select do |customers|
    customers.given_name == self 
    end 
    
  end 

  def family_name 
    Customer.all.select do |customers|
      customers.family_name == self 
    end 
  end 

  def self.all 
    ALL 
  end 

  def add_review(resturant, rating)
    resturant.rating.to_i
  end 


  def self.find_by_name(name)
    Customer.full_name.find do |f_l_name|
    f_l_name.full_name == self
    end
  end  

  end 

  def self.find_all_by_given_name(name)
    Customer.given_name.find do |lastname|
      lastname.given_name == self 

  end 
end
