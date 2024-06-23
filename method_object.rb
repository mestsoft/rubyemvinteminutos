class Greeter
  attr_accessor :name

  def initialize(name = "Vilson")
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye! #{@name}, come back soon!"
  end
end

greeter = Greeter.new("Pat")
greeter.say_hi
greeter.say_bye


greetern1 = Greeter.new("Sally")
greetern1.say_hi
greetern1.respond_to?("name")