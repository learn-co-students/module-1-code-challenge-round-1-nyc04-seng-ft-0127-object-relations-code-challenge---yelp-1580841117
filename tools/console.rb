require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

yafa = Customer.new("Dmitriy", "Malayev")
emilya = Customer.new("Emilya", "Malayeva")
raymond = Customer.new("Raymond", "Malayev")
dmitriy = Customer.new("Dmitriy", "Malayev")

italian_restaurant = Restaurant.new("Olive Garden")
chinese_restaurant = Restaurant.new("China King")
mexican_restaurant = Restaurant.new("Taco Bell")
greek_restaurant = Restaurant.new("Souvlaki GR")

review_1 = Review.new(yafa, italian_restaurant, 10)
review_2 = Review.new(emilya, chinese_restaurant, 9)
review_3 = Review.new(raymond, mexican_restaurant, 8)
review_4 = Review.new(dmitriy, greek_restaurant, 7) 




binding.pry
0 #leave this here to ensure binding.pry isn't the last line