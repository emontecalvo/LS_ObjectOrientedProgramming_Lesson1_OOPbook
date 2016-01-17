# the object model questions

# Q1: How do we create an object in Ruby? 
# Give an example of the creation of an object.

# Answer: Everything is an object in Ruby,
# but for a class, you would create a class, and call it
# would be instantiated with the .new method

class TestClass1
end

x = TestClass1.new


#Q2: What is a module? What is its purpose? How do we use them
# with our classes? Create a module 
# for the class you created in exercise 1 and include it properly.

#A:  "A module is a collection of behaviors that is useable in
#  other classes via mixins."

module DoSomething
  def kazaam
    puts "Kazaaaam!"
  end
end

class TestClass2
  include DoSomething
end

b = TestClass2.new
b.kazaam
