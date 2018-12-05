class AdminController < ApplicationController
	def index
		if !session[:user_id]
				flash[:danger] = "Login First"
	  		redirect_to login_path
	  end
	end

	def shop
	end

	def customers
		@users = User.all
	end

	def orders
		@orders = Order.all
	end

	def payments
		@payments = Payment.all
	end

end
