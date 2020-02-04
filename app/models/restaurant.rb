class Restaurant
  attr_reader :name, :reviews 
  @@all 

  def initialize(name, reviews)
    @name = name
    @reviews = reviews 
    @@all << self 
  end

  # def name    #already made
  #   @name 
  # end


  def self.all
    @@all 
  end 

  def reviews
    self.reviews 
  end 

  def customers
    self.customers.uniq  
  end 

  

end
