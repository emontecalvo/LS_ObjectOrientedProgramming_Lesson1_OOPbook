# OOP book
# Inheritance

# Problem 1
# Create a superclass called Vehicle for your MyCar class 
# to inherit from and move the behavior that isn't 
# specific to the MyCar class to the superclass.
#  Create a constant in your MyCar class that stores 
#  information about the vehicle that makes it different 
#  from other types of Vehicles.

# Then create a new class called MyTruck that inherits 
# from your superclass that also has a constant defined
#  that separates it from the MyCar class in some way.


# -- - - - - - - - -Problem 2:
# Add a class variable to your superclass that can 
# keep track of the number of objects created that 
# inherit from the superclass. Create a method to print out
#  the value of this class variable as well.


# * * * Problem 3
# Create a module that you can mix in to ONE of your 
# subclasses that
#  describes a behavior unique to that subclass.


# -- - - - - - - - -Problem 4:
# Print to the screen your method 
# lookup for the classes that you have created.

#  * * * Probelm 5:
# Move all of the methods from the MyCar class that also
#  pertain to the MyTruck class into the Vehicle class.
#   Make sure that all of your previous 
# method calls are working when you are finished.

# # - - - - - - - - - - - -Problem 6
# Write a method called age that calls a private method to
#  calculate the age of the vehicle. Make sure the private 
#  method is not available from outside of the class. 
# You'll need to use Ruby's built-in Time class to help.

class Vehicle

  attr_accessor :color
  attr_reader :model, :year

  @@vehicle_instances = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed_now = 0
    @@vehicle_instances += 1
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

  def to_s
    "These are the stats:  #{color}, #{year}, #{@model}."
  end

  def self.vehicle_instances
    puts "Vehicle instances: #{@@vehicle_instances}"
  end

  def sound(beep='beep') # problem 1
    puts "The horn sounds like this: #{beep} #{beep} #{beep}!"
  end

  def age
    puts "The vehicle age is #{calculate_age} years old."
  end

  private

  def calculate_age
    Time.now.year - @year.to_i
  end

end

module MudFlaps # problem 3
  def muddy
    puts "This contraption has mud flaps!"
  end
end

class MyCar5 < Vehicle

  NUMBER_OF_DOORS = 4


end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2

  include MudFlaps # problem 3

end

 puts ".........Problem 1 ........."
 puts " "
 fifth_car = MyCar5.new('1992', 'Ford', 'orange')
# fifth_car.speed_up(100)
# fifth_car.speed_now
# fifth_car.brake(20)
# fifth_car.speed_now
# fifth_car.shut_off
# fifth_car.speed_now
# fifth_car.color = 'blue'
# puts fifth_car.color
# puts fifth_car.year
# fifth_car.spray_paint('fuscia')
# puts fifth_car.color
# puts " * * * *  "
# fifth_car.gas_mileage(50, 5)
# fifth_car.gas_mileage(100, 5)
MyCar5.gas_mileage2(300, 30)
puts fifth_car
fifth_car.sound("bubeep!")
fifth_car.sound
truck1 = MyTruck.new('2002', 'Chevy', 'Black')
truck1.muddy
# problem 4 below:
puts " "
puts "MyTruck ancestors:"
puts MyTruck.ancestors
puts " "
puts "MyCar5 ancestors:"
puts MyCar5.ancestors
puts " "
puts "Vehicle ancestors:"
puts Vehicle.ancestors
puts " "
fifth_car.age



# - - - - - - - - - - PROBLEM 7
# Create a class 'Student' with attributes name and grade.
#  Do NOT make the grade getter public, so joe.grade will 
#  raise an error. Create a better_grade_than? method, 
#  that you can call like so...

# puts "Well done!" if joe.better_grade_than?(bob)





class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(the_other)
    grade > the_other.grade
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new("Joe", 95)
bob = Student.new("Bob", 92)

if joe.better_grade_than?(bob) == true
  puts "Well done!"
end


# - - - - - - - - - - - Problem 8

# Given the following code...

bob = Person.new
bob.hi
# And the corresponding error message...

# NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
# from (irb):8
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
# What is the problem and how would you go about fixing it?

#Answer: you could change the method to protected and call the result
# from a different method not protected
# or just move the hi method above the private line in the class







