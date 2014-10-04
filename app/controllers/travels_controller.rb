class TravelsController < ApplicationController
	before_filter :get_weather
	def hawaii
		@weatherData = cookies[:weather][1][1]
	end
end
