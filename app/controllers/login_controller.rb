class LoginController < ApplicationController
  def index
  	if session[:user_id]
  		user = User.find(session[:user_id])

  		if user.email == 'admin@admin.com'
	  		redirect_to admin_dashboard_path
	  	else
	  		redirect_to customer_dashboard_path
	  	end
  	end
  end

  def login
  end
end
