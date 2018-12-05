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

		flash[:success] = "Product Added!"
	 	redirect_to "/admin/product/add"
	end

	def destroy
		@prod = Product.find(params[:id])

		@prod.destroy

		flash[:success] = "Product Deleted!"

		redirect_to "/admin/products"
	end
end
