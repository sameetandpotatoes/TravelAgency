module Location
	require 'net/http'
	#Not needed anymore
	def self.from_browser_session
		api_key = "63bec244efb3cba1a6518814444c0595afca5a68035482dd36d5e68f6d4fa5e7";
		apiURL = "http://api.ipinfodb.com/v3/ip-city/?key=" + api_key + "&format=json&callback=?";
		url = URI.parse(apiURL)
		req = Net::HTTP::Get.new(url.to_s)
		res = Net::HTTP.start(url.host, url.port) {|http|
		  http.request(req)
		}
		result = JSON.parse(res.body[2..res.body.length-2])
	end

	def self.get_weather(location)
		weatherURL = "http://api.wunderground.com/api/434dfd195958304a/forecast10day/q/"+location[0].to_s+","+location[1].to_s+".json";
		url = URI.parse(weatherURL)
		req = Net::HTTP::Get.new(url.to_s)
		res = Net::HTTP.start(url.host, url.port) {|http|
		  http.request(req)
		}
		result = JSON.parse(res.body)
	end

	def self.get_currency(currency_name)
		currencyURL = "http://rate-exchange.appspot.com/currency?from=USD&to="+currency_name
		url = URI.parse(currencyURL)
		req = Net::HTTP::Get.new(url.to_s)
		res = Net::HTTP.start(url.host, url.port) {|http|
		  http.request(req)
		}
		result = JSON.parse(res.body)
		result["rate"]
	end
end
