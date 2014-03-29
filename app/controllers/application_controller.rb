class ApplicationController < ActionController::Base
  protect_from_forgery

  private #-----------------------

  def authorise_access
  	if not session[:user_id]
  		flash[:danger] = 'Please log in'
  		redirect_to '/admin/login'
  		return false
  	end
  end
end
