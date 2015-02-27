class TravelsController < ApplicationController
	def hawaii
		@dest = "Hawaii"
		@currencyRate = 1
		initVars()
	end

	def italy
		@dest = "Italy"
		@currencyRate = 0.89
		initVars()
	end

	def china
		@dest = "China"
		@currencyRate = 6.27
		initVars()
	end

	#constants are linked to hashes in config with all destination info
	def initVars
		@currencyUnit = INFO[@dest]["currency"]
		# @currencyRate = get_currency(@currencyUnit)
		@weatherData = get_weather(INFO[@dest]["location"])
		render "show"
	end

	def random
		send([:hawaii, :italy, :china].sample)
	end
end
