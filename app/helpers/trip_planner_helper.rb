def yourTrip(origin, destination, arrival_time)
  require 'nokogiri'
  require 'open-uri'
  require 'httparty'

  xml_file = Nokogiri::XML(open("http://api.bart.gov/api/sched.aspx?cmd=arrive&orig=#{origin}&dest=#{destination}&time=#{arrival_time}&date=now&b=2&a=2&l=1&key=MW9S-E7SL-26DU-VV8V"))

  trip_xml_information = xml_file.at_xpath('//schedule/request/trip')
  trip_details_array = trip_xml_information.values
  starting_station = trip_details_array[0]
  destination_station = trip_details_array[1]
  trip_fare = trip_details_array[2]
  train_time = trip_details_array[3]
  trip_date = trip_details_array[4]
  destination_arrival_time = trip_details_array[5]

  p "So right now, MVP dictates I only tell you the first of three possibilities to get where you're going. Let's make sure you're on time. Starting from #{starting_station}, your trip to #{destination_station} will take some time that I have left to implement. Board your train at #{starting_station} at #{train_time}, and you will arrive at #{destination_station} at #{destination_arrival_time}. Bring $#{trip_fare} for fare."

end