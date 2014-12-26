class TravelsController < ApplicationController
	def hawaii
		# @localCurrency = "USD"
		# @currencyData = 1

		# @currencyData = get_currency(INFO["Hawaii"]["currency"])
		@dest = "Hawaii"
		@weatherData = get_weather(INFO[@dest]["location"])
		render "show"
	end

	def italy
		# @localCurrency = "EUR"
		@dest = "Italy"
		# @currencyData = get_currency(@localCurrency)
		@weatherData = get_weather(INFO[@dest]["location"])
		render "show"
	end
end
