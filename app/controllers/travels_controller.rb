class TravelsController < ApplicationController
	def hawaii
		@dest = "Hawaii"
		initVars()
	end

	def italy
		@dest = "Italy"
		initVars()
	end

	def china
		@dest = "China"
		initVars()
	end

	def initVars
		@currencyUnit = INFO[@dest]["currency"]
		@currencyRate = get_currency(@currencyUnit)
		@weatherData = get_weather(INFO[@dest]["location"])
		render "show"
	end

	def random
		send([:hawaii, :italy, :china].sample)
	end
end
