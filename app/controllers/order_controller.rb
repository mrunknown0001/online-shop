class OrderController < ApplicationController

	def place
		@order = Order.new(params[:order])
		@order.product_id = params[:product_id]
		@order.product_quantity = params[:quantity]
		@order.product_price = params[:product_price]
		@order.total = params[:quantity].to_i * params[:product_price].to_i
		@order.save

		redirect_to "/u/myOrders"
	end
end
