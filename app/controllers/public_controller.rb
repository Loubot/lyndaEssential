class PublicController < ApplicationController

  require 'monetize/core_extensions'

  before_filter :find_or_create_cart, :except => [:list]

  def list
  	@albums = Album.all(:order => 'title ASC')
  end

  def add_to_cart
  	album = Album.find(params[:id])
  	@cart = find_or_create_cart
  	@cart.add_album(album)
  	session[:cart] = @cart
  	redirect_to '/public/show_cart'
  	
  end

  def show_cart
  	@cart = find_or_create_cart
  end

  def remove_item
    album = Album.find(params[:album])
    @cart.remove_album(album)
    redirect_to :back
  end

  def empty_cart
    @cart.empty_all_items
    flash[:success] = 'Cart emptied'
    redirect_to '/public/list'
  end


  def checkout
    @customer = Customer.new
        
  end

  def create_order
    flash[:success] = params[:address]
    redirect_to :back
  end


  private #-----------------------------

  def find_or_create_cart
  	@cart = session[:cart] ||= Cart.new
  end

  

  
end
