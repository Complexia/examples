require 'json'
require 'thor'
class Trends < Thor
  desc "list_trends","Lists all of the countries trending on Twitter"
  method_options :'api-key' => :String
  method_options :'format-oneline' => :boolean
  method_options :'no-country-code' =>:boolean




  def list_trends(keyword = "")
    standard_passer = true
    oneline_passer = true
    no_country_code_passer = true




    if options[:'api-key'] =~ /\D/ && options[:'api-key'] =~ /\d/ && options[:'api-key'].size >=8
      unless options[:'format-oneline']
        oneline_passer = false
      end
      unless options[:'no-country-code']
        no_country_code_passer = false
      end

      if oneline_passer || no_country_code_passer
        standard_passer = false
      end


      loop_and_print(keyword,oneline_passer,no_country_code_passer,standard_passer)









    else
      puts "Invalid API, aborting..."
    end

  end

end
def loop_and_print (keyword,oneline_passer,no_country_code_passer,standard_passer)



  json = File.read('trends.json')
  data_hash = JSON.parse(json)
  json = File.read('trends.json')
  data_hash = JSON.parse(json)

  data_hash.each do |i|
    if (i['country'].downcase).include? (keyword.downcase)
      if oneline_passer
        puts "#{i['country']} #{i['countryCode']} #{i['name']}"
      end

      if no_country_code_passer
        puts "Trend Country: #{i['country']}"
        puts "Trend Location Name: #{i['name']}"
        puts "Trend Location Place Type: #{i['placeType']['name']}"
        puts "----------------------------------------------------------"
      end

      if standard_passer
        puts "Trend Country: #{i['country']}"
        puts "Trend Country Code: #{i['countryCode']}"
        puts "Trend Location Name: #{i['name']}"
        puts "Trend Location Place Type: #{i['placeType']['name']}"
        puts "----------------------------------------------------------"
      end

    end


  end

end
Trends.start
