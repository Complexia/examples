require 'json'
require 'thor'
class Trends < Thor
  desc "listTrends","Lists all of the countries trending on Twitter"



  def listTrends

    json = File.read('trends.json')
    data_hash = JSON.parse(json)

    puts "Trend Country: #{data_hash[7]['country']}"
    puts "Trend Country Code: #{data_hash[7]['countryCode']}"
    puts "Trend Location Name: #{data_hash[7]['name']}"
    puts "Trend Location Place Type: #{data_hash[7]['placeType']['name']}"

  end





end
Trends.start
