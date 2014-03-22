class PublicController < ApplicationController

  def list
  	@albums = Album.all(:order => 'title ASC')
  end

  def add_to_cart
  	album = Album.find(params[:id])
  	@cart = find_or_create_cart
  	@cart.add_album(album)
  	session[:cart] = @cart
  	redirect_to '/public/show_cart'
  	return
  end

  def show_cart
  	@cart = find_or_create_cart
  end

  private

  def find_or_create_cart
  	session[:cart] ||= Cart.new
  end

end
