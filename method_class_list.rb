class MegaGreeter
  attr_accessor :names

  # create the object
  def initialize(names = "Paty")
    @names = names
  end

  # say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Goodbye #{@names.join(", ")}. come back soon!!"
    else
      puts "Goodbye #{names}. come back soon!"
    end
  end

end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # change name to be "zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbelt"]

  mg.say_hi
  mg.say_bye

  mg.names = nil
  mg.say_hi
  mg.say_bye

end