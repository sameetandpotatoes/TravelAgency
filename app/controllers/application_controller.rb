class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def get_location
  	cookies[:location] = Location.from_browser_session
  end
  def self.get_weather(loc)
  	result = Location.get_weather(loc)
    result_array = result.to_a
    #Fix formatting for temperature - Fahrenheit only for now but can be changed to Celcius
    # result_array[1][1]["temperature_string"] = result_array[1][1]["temperature_string"].split(/\s+/, 2+1)[0...2].join('°')
    result_array[1][1]["simpleforecast"]["forecastday"]
      #tz long
      #pretty - first three words
      #weekday
      #high - farenheit
      #low -fahrenheit
      #conditions
      #icon-url
  end
  def self.get_currency(currency_name)
    Location.get_currency(currency_name)
  end
end
