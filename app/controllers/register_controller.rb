class RegisterController < ApplicationController
	def index
		@user = User.new

	  	if session[:user_id]
	  		user = User.find(session[:user_id])

	  		if user.email == 'admin@admin.com'
		  		redirect_to admin_dashboard_path
		  	else
		  		redirect_to customer_dashboard_path
		  	end
	  	end
	end
end
