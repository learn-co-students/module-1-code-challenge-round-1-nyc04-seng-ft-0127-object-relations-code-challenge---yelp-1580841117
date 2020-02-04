class Customer
  attr_accessor :given_name, :family_name, :restaurant 

@@all = [] 
  def initialize(given_name, family_name, restaurant)
    @given_name = given_name
    @family_name  = family_name
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def given_name 
  self.given_name
  end 

  def family_name 
    self.family_name
  end 

  def full_name
    given_name.concat(" "family_name)
  end

  def self.all
  @all 
  end 

  def add_review(restaurant, rating)
    @restaurant = restaurant  
    @rating = rating 
  end 


end 