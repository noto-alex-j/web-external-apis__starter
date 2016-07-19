def weatherLink(lat,long)
	return HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/#{lat},#{long}")
end

def timeArray(weatherinfo)
	@timearray = Array.new
	weatherinfo["hourly"]["data"].each do |x|
		@time = x["time"]
		@converted = Time.at(@time).strftime("%l %p")
		@timearray.push(@converted)
	end
	return @timearray
end

def dayArray(weatherinfo)
	@dayarray = Array.new
	weatherinfo["daily"]["data"].each do |x|
		@time = x["time"]
		@converted = Time.at(@time).strftime("%A")
		@dayarray.push(@converted)
	end
	return @dayarray
end

