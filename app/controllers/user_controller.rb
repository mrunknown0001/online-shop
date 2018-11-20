class UserController < ApplicationController
  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
 

 def create
 	@user = User.new(params[':user'])
 	@user.firstname = params[:firstname]
 	@user.lastname = params[:lastname]
 	@user.email = params[:email]
 	@user.password = params[:password]
 	@user.save

 	redirect_to "/users"
 end
end
