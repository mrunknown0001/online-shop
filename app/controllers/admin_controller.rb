class AdminController < ApplicationController
	def index
	end

	def shop
	end

	def customers
		@users = User.all
	end

end
