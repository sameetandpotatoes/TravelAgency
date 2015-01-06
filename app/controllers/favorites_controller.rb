class FavoritesController < ApplicationController
  def index
    # @all_favs = session[:favorites]
    @all_favs = ActiveSupport::JSON.decode(cookies[:favorites])
  end

  def create
    @title = "Favorites"
    obj = {}
    obj[params[:package]] = params[:activities]
    cookies[:favorites] = { value: ActiveSupport::JSON.encode(obj), expires: 1.month.from_now }
    @length = (ActiveSupport::JSON.decode(cookies[:favorites]) || {}).length
    render layout: false
  end

  def destroy
    @title = "Favorites"
    obj = ActiveSupport::JSON.decode(cookies[:favorites])
    obj.delete(params[:package_id])
    cookies[:favorites] = { value: ActiveSupport::JSON.encode(obj), expires: 1.month.from_now }
    @all_favs = ActiveSupport::JSON.decode(cookies[:favorites])
    @length = (ActiveSupport::JSON.decode(cookies[:favorites]) || {}).length
    render layout: false
  end

  def clear_all
    cookies.delete :favorites
    @all_favs = cookies[:favorites]
    render "index"
  end
end
