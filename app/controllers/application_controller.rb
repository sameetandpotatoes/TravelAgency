class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def get_location
  	cookies[:location] = Location.from_browser_session
  end
  def self.get_weather(hawaiiloc)
  	result = Location.get_weather(hawaiiloc)
    result.to_a
  end
  def self.get_currency(currency_name)
    Location.get_currency(currency_name)
  end
end
