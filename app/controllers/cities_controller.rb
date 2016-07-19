MyApp.get "/" do
	erb :"home"
end

MyApp.get "/weather" do
	@lat = params[:lat]
	@long = params[:long]
	@city = params[:city]

	@weather_info = weatherLink(@lat,@long)
	@timearray = timeArray(@weather_info)
	@dayarray = dayArray(@weather_info)

  erb :"weather"
  # binding.pry
end