#!/usr/bin/env ruby

class MegaGreeter
  # getter/setter for variable name
  attr_accessor :names

  # constructor incl. default value
  def initialize(names = "Welt")
    @names = names
  end

  # say hello to all names

  def say_hello
    if @names.nil?
      puts "no names defined"

    # check if names has got an iterator
    elsif @names.respond_to?("each")
      @names.each do |n|
        puts "Hallo, #{n}!"
      end

    # no iterator available, just print the value of names
    else 
      puts "Hallo, #{@names}!"
    end
  end

  def say_goodbye
    if @names.nil?
      puts "no names defined"

    # check if names has got an iterator
    elsif @names.respond_to?("join")
      puts "goodbye using join"
      puts "Goodbye, #{@names.join(", ")}!"

    # no iterator available, just print the value of names
    else 
      puts "basic goodbye:"
      puts "Goodybe, #{@names}!"
    end
  end
 
end

if __FILE__ == $0
  mg = MegaGreeter.new()
  mg.say_hello
  mg.say_goodbye

  mg.names = "Micha"
  mg.say_hello
  mg.say_goodbye

  mg.names = ["Micha", "Otto", "Karl"]
  mg.say_hello
  mg.say_goodbye

  mg.names = nil
  mg.say_hello
  mg.say_goodbye
end 