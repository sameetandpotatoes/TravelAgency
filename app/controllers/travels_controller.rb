class TravelsController < ApplicationController
	def hawaii
		headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
	end
end
