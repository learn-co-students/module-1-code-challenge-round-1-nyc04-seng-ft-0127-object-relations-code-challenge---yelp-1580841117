class Customer
  @@all = []
  attr_accessor :given_name, :family_name

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name
    @@all << self 
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def given_name
    @@all.map{|name|name.given_name}
  end 

  def family_name 
    @@all.map{|family|family.family_name}
  end 

  def self.all
    @@all 
  end 

  def restaurants 
    Restaurant.all.select{|customer|customer.rate == self}uniq
  end 

  def add_review(restaurants,rating)
    Review.new(restaurants,self,rate)
  end 

  def num_reviews
      @@all.reduce(0){|sum,n|sum + n.rate}
  end 

  def find_by_name(name)
    @@all.select{|customer|customer.full_name.first == name}
  end 

  def find_all_by_given(name)
    @@all.select{|name| name.given_name == name}
  end 



end
