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
		@payments = Payment.all
	end

	def myorders
		@orders = Order.all
	end

	def payOrder
		@user = User.find(params[:user_id])

		@order = Order.find(params[:id])
		@order.remarks = 'Paid'
		@order.save

		@product = Product.find(@order.product_id)
		@product.quantity = @product.quantity - @order.product_quantity
		@product.save

		@payment = Payment.new(params[:payment])
		@payment.user_id = @user.id
		@payment.user = @user.firstname + ' ' + @user.lastname
		@payment.product = @order.product_name
		@payment.payment = @order.total
		@payment.save

		flash[:success] = "Payment Successful"

		redirect_to "/u/myOrders"
	end
end
