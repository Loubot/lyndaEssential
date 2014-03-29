class AdminController < ApplicationController

  def menu
  end

  def login
  	
  end

  def check_login
		@user = User.new(params[:user])
		logged_in_user = @user.try_to_login
		
		if logged_in_user != []
			flash[:success] = 'Found'
		else
			flash[:danger] = 'No User'
		end
		redirect_to :back
  end
end
