  # require 'httparty'
  require 'nokogiri'
  require 'open-uri'


  # api = "http://api.bart.gov/api/stn.aspx?cmd=stns&key=MW9S-E7SL-26DU-VV8V"
  # response = HTTParty.get(api)

  # names = []
  # station_names = []

  # response.each do |key, value|
  #   value.each do |more_keys, more_values|
  #     names << more_values
  #   end
  # end

  # i = 0
  # until i == names[1].values[0].length do
  #   station_names << names[1].values[0][i].values[0]
  #   i += 1
  # end

  # station_names

  xml_file = Nokogiri::XML(open("http://api.bart.gov/api/stn.aspx?cmd=stns&key=MW9S-E7SL-26DU-VV8V"))

  station_name = xml_file.at_xpath('//stations/station/name')
  station_abbr = xml_file.at_xpath('//stations/station/abbr')

  p "#{station_name}'s abbreviation is #{station_abbr}"




