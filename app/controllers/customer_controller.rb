class CustomerController < ApplicationController
	def home
	end

	def index
		if !session[:user_id]
				flash[:danger] = "Login First"
	  		redirect_to login_path
	  end
	end

	def shop
		@products = Product.all
	end

	def buy
		@product = Product.find(params[:id])
	end

	def placeorder

	end

	def payments

	end

	def myorders
		@orders = Order.all
	end
end
