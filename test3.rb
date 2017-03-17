require 'thor'
class Trends < Thor
  desc "listTrends","Lists all of the countries trending on Twitter"

  def call_block

    puts 'Start of method'
    # you can call the block using the yield keyword
    yield
    yield
    puts 'End of method'

  end
  call_block {puts 'In the block'}
  # Code blocks may appear only in the source adjacent to a method call

end
Trends.start
