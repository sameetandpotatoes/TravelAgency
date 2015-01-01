class FavoritesController < ApplicationController
  def index
    @all_favs = session[:favorites]
  end

  def create
    @title = "Favorites"
    (session[:favorites] ||= {})[params[:package]] = params[:activities]
    @length = (session[:favorites] || {}).length
    render layout: false
  end

  def destroy
    @title = "Favorites"
    session[:favorites].delete(params[:package_id])
    @all_favs = session[:favorites]
    render layout: false
  end

  def clear_all
    session[:favorites] = {}
    @all_favs = session[:favorites]
    render "index"
  end
end
