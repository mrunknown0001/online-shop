class ProductController < ApplicationController

	def index
		@products = Product.all
	end

	def create
	end

	def add
	 	@prod = Product.new(params[':product'])
	 	@prod.name = params[:name]
	 	@prod.description = params[:description]
	 	@prod.price = params[:price]
	 	@prod.quantity = params[:quantity]
	 	@prod.save

	 	redirect_to "/admin/product/add"
	end

	def destroy
		@prod = Product.find(params[:id])

		@prod.destroy

		redirect_to "/admin/products"
	end
end
