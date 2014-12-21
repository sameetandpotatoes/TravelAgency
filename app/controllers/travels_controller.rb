class TravelsController < ApplicationController
	def hawaii
		@localCurrency = "USD"
		@currencyData = 1
		# @currencyData = get_currency(@localCurrency)
		@weatherData = get_weather(HAWAII_LOCS)
	end

	def italy
		@localCurrency = "EUR"
		@currencyData = get_currency(@localCurrency)
		@weatherData = get_weather(ITALY_LOCS)
	end
end
