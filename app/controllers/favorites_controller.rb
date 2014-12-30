class FavoritesController < ApplicationController
  def create
    @title = "Favorite"
    (session[:favorites] ||= []).push([params[:package], params[:activities]])
    @length = (session[:favorites] || []).length
    render layout: false
  end
end
