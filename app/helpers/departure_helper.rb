def departure(station)
  require 'nokogiri'
  require 'open-uri'

  xml_file = Nokogiri::XML(open("http://api.bart.gov/api/etd.aspx?cmd=etd&orig=#{station}&key=MW9S-E7SL-26DU-VV8V"))


  next_station = xml_file.at_xpath('//station/etd/destination')

  next_train = xml_file.at_xpath('//station/etd/estimate/minutes')

  p "Next train to #{next_station} from #{station} is in #{next_train} minutes."
end