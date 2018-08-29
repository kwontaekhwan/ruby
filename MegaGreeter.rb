class MegaGreeter
  attr_accessor :names

  #Creat the object
  def initialize(names = "world")
    @names = names
  end

  # Say hi to everybody
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

  # say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  #Change name to be "zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  #Chane the name to a array of names
  mg.names = ["Albert","Brenda","Charles","Dave","Engelbert"]
  mg.say_hi
  mg.say_bye

  #Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end
