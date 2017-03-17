require 'thor'
require 'json'
class Trends < Thor
  desc "listTrends","Lists all of the countries trending on Twitter"

  def call_block

    puts 'Start of method'
    # you can call the block using the yield keyword
    che = 1;
    yield unless che == 1
    yield unless che == 1
    puts 'End of method'

  end



  # Code blocks may appear only in the source adjacent to a method call

end
trendz = Trends.new()

trendz.call_block do
  json = File.read('trends.json')
  data_hash = JSON.parse(json)

  puts "Trend Country: #{data_hash[7]['country']}"
  puts "Trend Country Code: #{data_hash[7]['countryCode']}"
  puts "Trend Location Name: #{data_hash[7]['name']}"
  puts "Trend Location Place Type: #{data_hash[7]['placeType']['name']}"

end
