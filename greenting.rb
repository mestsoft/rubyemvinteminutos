class Greenting

  def initialize(name = 'Vilson')
    @name = name
  end

  def say_hi
    if @name.nil?
      puts "..."
    elsif @name.respond_to?("each")
      @name.each do |name|
        puts "Hi #{name}!"
      end
    else
      puts "Hi #{@name}!"
    end
  end

  def say_bye
    puts "Bye! #{@name}"
  end
end

vilson = Greenting.new
vilson.say_hi
vilson.say_bye

