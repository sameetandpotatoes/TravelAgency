class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_location
  	cookies[:location] = Location.from_browser_session
  end

  def get_weather(loc)
  	result = Location.get_weather(loc)
    result_array = result.to_a
    forecastdata = result_array[1][1]["simpleforecast"]["forecastday"]
    forecastdata[forecastdata.length] = result_array[1][1]["txt_forecast"]["date"]
    forecastdata
  end

  def get_currency(currency_name)
    Location.get_currency(currency_name)
  end
end
