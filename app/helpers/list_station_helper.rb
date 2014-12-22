def list_stations
  require 'nokogiri'
  require 'open-uri'
  xml_file = Nokogiri::XML(open("http://api.bart.gov/api/stn.aspx?cmd=stns&key=MW9S-E7SL-26DU-VV8V"))

  # station_name = xml_file.at_xpath('//stations/station/name')
  # station_abbr = xml_file.at_xpath('//stations/station/abbr')

  # p "#{station_name}'s abbreviation is #{station_abbr}"

  station_names = xml_file.xpath('//stations/station/name')
  station_abbreviations = xml_file.xpath('//stations/station/abbr')

  station_information = [station_names, station_abbreviations]
  return station_information
end