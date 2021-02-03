#!/usr/bin/env ruby

# define the function
def h
  puts "Hello, world"
end 

# another function
def name(name)
  puts "Hallo, #{name}!" 
  puts "Hallo, #{name.capitalize}!" 
end

# define a class
class Greeter
  def initialize(name = "Welt")
    @name = name
  end
  def say_hello
    puts "Hallo, #{@name}"
  end
  def say_goodbye
    puts "Goodbye, #{@name}, see you soon!" 
  end
end



# call the function 
h
h()

# two call formats are possible
name("micha")
name "micha"

puts "---"

# create an object of type Greeter
g = Greeter.new("Micha")
g.say_hello
g.say_goodbye

# @name is not accessile directly, the following line throws an error
#puts g.@name

# have a look at the object
puts ""
puts "Have a look at the Greeter class"
puts Greeter.instance_methods
puts ""
puts "Have a look at the Greeter class without methods of parent class"
puts Greeter.instance_methods(false)

# check what we can find out on explicit properties/methods of the object

def check_object_property(o, s)
  puts "checking availability of #{s} in the object #{o}"
  puts o.respond_to?(s)
end

check_object_property(g, "name")
check_object_property(g, "say_hello")
check_object_property(g, "to_s")

# extend the class
class Greeter
  attr_accessor :name
end

# weird, the existing object of class Greeter is also extended

# getter
check_object_property(g, "name")
puts g.name
# check availability of setter
check_object_property(g, "name=")
g.name = "not Micha"
puts g.name