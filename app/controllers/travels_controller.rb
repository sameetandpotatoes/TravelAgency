class TravelsController < ApplicationController
	# before_filter :get_weather
	def hawaii
		hawaiiloc = {
			latitude: "21.3114",
			longitude: "-157.7964"
		}
		@localCurrency = "USD"
		@currencyData = 1
		# @currencyData = ApplicationController.get_currency(@localCurrency)
		@weatherData = ApplicationController.get_weather(hawaiiloc)
	end
end
