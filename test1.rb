require 'thor'
require 'json'
class Trends < Thor
  desc "welcome", "Prints 'Welcome ${name}' to the console"


  def list_trends(name)

    json = File.read('trends.json')
    data_hash = JSON.parse(json)
    puts "something"

    #yield

  end


end
trendz = Trends.new




Trends.start
