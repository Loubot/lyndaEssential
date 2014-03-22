class PublicController < ApplicationController

  def list
  	@albums = Album.all(:order => 'title ASC')
  end

  def add_to_cart
  	album = Album.find(params[:id])
  	@cart = Cart.new
  	@cart.add_album(album)
  	redirect_to show_cart_path
  end

  def show_cart

  end
  
end
