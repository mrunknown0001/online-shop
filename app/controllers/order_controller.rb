class OrderController < ApplicationController

	def place
		@user = User.find(params[:user_id])

		@order = Order.new(params[:order])
		@order.user_id = @user.id
		@order.user = @user.firstname + ' ' + @user.lastname
		@order.product_id = params[:product_id]
		@order.product_name = params[:product_name]
		@order.product_quantity = params[:quantity]
		@order.product_price = params[:product_price]
		@order.total = params[:quantity].to_i * params[:product_price].to_i
		@order.remarks = 'Unpaid';
		@order.save

		flash[:success] = "Order Saved!"

		redirect_to "/u/myOrders"
	end
end
