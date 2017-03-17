require 'json'
require 'thor'
class Trends < Thor
  desc "listTrends","Lists all of the countries trending on Twitter"
  method_options :api-key => :String

  def listTrends

  yield

  end

  listTrends
  {puts "it works" }


end
Trends.start
