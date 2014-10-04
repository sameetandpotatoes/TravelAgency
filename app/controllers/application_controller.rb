class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_location
  	cookies[:location] = Location.from_browser_session
  end
  def get_weather
  	result = Location.get_weather
  	cookies[:weather] = result.to_a
  end
end
