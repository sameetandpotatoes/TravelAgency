class FavoritesController < ApplicationController
  def index
    @all_favs = ActiveSupport::JSON.decode(cookies[:favorites] || "{}")
  end

  def create
    @title = "Favorites"
    #get favorites cookie array (or create one)
    #cookies array is organized by a hash with a key of package id and value of activities array in ids
    all_favs = ActiveSupport::JSON.decode(cookies[:favorites] || "{}")
    all_favs[params[:package]] = params[:activities]
    cookies[:favorites] = { value: ActiveSupport::JSON.encode(all_favs), expires: 1.month.from_now }
    @length = all_favs.length
    render layout: false
  end

  def destroy
    @title = "Favorites"
    all_favs = ActiveSupport::JSON.decode(cookies[:favorites] || "{}")
    all_favs.delete(params[:package_id])
    cookies[:favorites] = { value: ActiveSupport::JSON.encode(all_favs), expires: 1.month.from_now }
    @all_favs = all_favs
    @length = @all_favs.length
    render layout: false
  end

  # method for debugging purposes, not available to users
  def clear_all
    cookies.delete :favorites
    @all_favs = cookies[:favorites]
    render "index"
  end
end
