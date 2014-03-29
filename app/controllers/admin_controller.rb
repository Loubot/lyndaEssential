class AdminController < ApplicationController

	before_filter :authorise_access, :except => [:login, :check_login]

  def menu
  end

  def login
  	
  end

  def check_login
		@user = User.new(params[:user])
		logged_in_user = @user.try_to_login
		if logged_in_user 
			session[:user_id] = logged_in_user.id
			flash[:success] = 'Successfully logged in'
			redirect_to '/admin/menu'
		else
			flash[:danger] = 'User name or password incorrect'
			redirect_to :back
		end		
  end

  def logout
  	session[:user_id] = nil
  	flash[:notice] = 'You are logged out'
  	redirect_to '/admin/login'
  end  
end
