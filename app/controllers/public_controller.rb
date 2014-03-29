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
    @customer = Customer.new(params[:customer])
    @order = Order.new
    @order.line_items << @cart.items
    @customer.orders << @order
    if @customer.save
      flash[:success] = 'Well done'
      @cart.empty_all_items
      redirect_to public_receipt_path(:id => @order.id)
    else
      flash[:danger] = 'Nope'
      redirect_to :back
    end    
  end

  def receipt
    @order = Order.find(params[:id])
  end


  private #-----------------------------

  def find_or_create_cart
  	@cart = session[:cart] ||= Cart.new
  end

  

  
end
