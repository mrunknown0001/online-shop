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

		uploaded_io = params[:image]
    	File.open(Rails.root.join('public', 'images',uploaded_io.original_filename), 'wb') do |file|
		file.write(uploaded_io.read)
		end

		@prod.image = uploaded_io.original_filename
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
