get '/' do
  erb :index
end

get '/stations/list' do
  erb :_list_stations
end

get '/train/plan' do
  erb :select_origin
end

post '/train/plan' do
  @station = params[:trip].values[0]
  erb :_departures
end

get '/trip/plan' do
  erb :trip_planner
end

post '/trip/plan' do
  @origin = params[:trip].values[0]
  @destination = params[:trip].values[1]
  @time = params[:trip].values[2]
  erb :_your_trip

end

get '/detailed_trip/plan' do
  erb :detailed_trip_planner
end

post '/detailed_trip/plan' do
  @origin = params[:trip].values[0]
  @destination = params[:trip].values[1]
  @time = params[:trip].values[2]
  erb :_your_detailed_trip
end
