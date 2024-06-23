class Greeter
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

greeter = Greeter.new
greeter.say_hi
greeter.say_bye