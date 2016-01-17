# OOP book
# Classes and Objects Part II

# Problem 1
# Add a class method to your MyCar class
# that calculates the gas mileage of any car.

class MyCar4

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

  def gas_mileage(miles, gallons)
    milage = miles / gallons
    puts "Gas milage is #{milage} miles to the gallon."
  end

  def self.gas_mileage2(miles, gallons)
    milage2 = miles / gallons
    puts "Gas milage is #{milage2} miles to the gallon."
  end

  #problem 2:
  def to_s
    "These are the car stats:  #{color}, #{year}, #{@model}."
  end

end
 puts ".........Problem 1 ........."
 puts " "
 fourth_car = MyCar4.new('1992', 'Ford', 'orange')
# fourth_car.speed_up(100)
# fourth_car.speed_now
# fourth_car.brake(20)
# fourth_car.speed_now
# fourth_car.shut_off
# fourth_car.speed_now
# fourth_car.color = 'blue'
# puts fourth_car.color
# puts fourth_car.year
# fourth_car.spray_paint('fuscia')
# puts fourth_car.color
# puts " * * * *  "
# fourth_car.gas_mileage(50, 5)
# fourth_car.gas_mileage(100, 5)
MyCar4.gas_mileage2(300, 30)


# 2 . Override the to_s method to create a 
# user friendly print out of your object.
puts " "
puts " ........Problem 2 ....."
puts " "


puts fourth_car


# -----------PROBLEM 3

# When running the following code...

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
# We get the following error...

# test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)
# Why do we get this error and how to we fix it?


# Answer:
# change attr_reader to attr_accessor, which will allow
# you to both read and change (get and set), as opposed to
# just reading the instance variable