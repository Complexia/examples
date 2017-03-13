require 'thor'

class Greet < Thor
  desc "welcome", "Prints 'Welcome ${name}' to the console"


  def welcome(name)

    puts "Welcome #{name}!"

  end


end
Greet.start
