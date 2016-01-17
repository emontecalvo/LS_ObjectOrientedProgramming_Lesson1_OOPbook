# # 1.  Create a class called MyCar. When you initialize
#  a new instance or object of the class, allow the user 
#  to define some instance variables that tell us the
#   year, color, and model of the car.
#    Create an instance variable that is set to 0 during
#     instantiation of the object to track the current speed 
#     of the car as well. Create instance methods that 
#     allow the car to
#  speed up, brake, and shut the car off.

class MyCar

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed_now = 0
  end

  def speed_up(mph)
    @speed_now += mph
    puts "Push the gas and go #{mph} fast!" 
  end

  def brake(mph)
    @speed_now -= mph
    puts "Push the brake and go down by #{mph} slower."  

  end

  def speed_now
    puts "You are going #{@speed_now} mph"
  end

  def shut_off
    @speed_now = 0
    puts "Stop the car completely."
  end

end

puts " Problem One "
first_car = MyCar.new('1990', 'Honda', 'red')
first_car.speed_up(50)
first_car.speed_now
first_car.brake(30)
first_car.speed_now
first_car.shut_off
first_car.speed_now
puts " "

# ----****-----***
# 2. Add an accessor method to your MyCar class to change
#  and view the color of your car. 
#  Then add an accessor method that allows you to view, 
# but not modify, the year of your car.

puts " Problem 2"
class MyCar2

  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed_now = 0
  end

  def speed_up(mph)
    @speed_now += mph
    puts "Push the gas and go #{mph} fast!" 
  end

  def brake(mph)
    @speed_now -= mph
    puts "Push the brake and go down by #{mph} slower."  

  end

  def speed_now
    puts "You are going #{@speed_now} mph"
  end

  def shut_off
    @speed_now = 0
    puts "Stop the car completely."
  end

  def this_is_a_test(bobo='lulu')
    puts "HEllllllOOOOOO wheels!"
    puts "#{bobo}"
  end

end

second_car = MyCar2.new('1997', 'Mazda', 'purple')
second_car.speed_up(60)
second_car.speed_now
second_car.brake(30)
second_car.speed_now
second_car.shut_off
second_car.speed_now
puts " * * * *  "
second_car.color = 'blue'
puts second_car.color
puts second_car.year
second_car.this_is_a_test
second_car.this_is_a_test("laaalaaa")

# ----------------
# 3.  You want to create a nice interface that allows 
# you to accurately describe the action you want
#  your program to perform. Create a method called spray_paint 
#  that can be called
#  on an object and will modify the color of the car.
puts " "
puts " * * *  * * * * * * "
puts "Problem 3"
class MyCar3

  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed_now = 0
  end

  def speed_up(mph)
    @speed_now += mph
    puts "Push the gas and go #{mph} fast!" 
  end

  def brake(mph)
    @speed_now -= mph
    puts "Push the brake and go down by #{mph} slower."  

  end

  def speed_now
    puts "You are going #{@speed_now} mph"
  end

  def shut_off
    @speed_now = 0
    puts "Stop the car completely."
  end

  def spray_paint(color)
    # called on an object and will modify the color of the car
    self.color = color
    puts "The new car color is #{color}"
  end

end

third_car = MyCar3.new('1992', 'Ford', 'orange')
third_car.speed_up(100)
third_car.speed_now
third_car.brake(20)
third_car.speed_now
third_car.shut_off
third_car.speed_now
puts " * * * *  "
third_car.color = 'blue'
puts third_car.color
puts third_car.year
third_car.spray_paint('fuscia')
puts third_car.color




