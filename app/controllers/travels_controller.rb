class TravelsController < ApplicationController
	def hawaii
		@dest = "Hawaii"
		initVars()
		render "show"
	end

	def italy
		@dest = "Italy"
		initVars()
		render "show"
	end

	def china
		@dest = "China"
		initVars()
		render "show"
	end

	def initVars
		@currencyUnit = INFO[@dest]["currency"]
		@currencyRate = get_currency(@currencyUnit)
		@weatherData = get_weather(INFO[@dest]["location"])
	end

	def random
		send([:hawaii, :italy, :china].sample)
	end
end
