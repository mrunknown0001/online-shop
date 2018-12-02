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
 	
 	if @user.save
		flash[:success] = "Registered Successfully!"
	 	redirect_to "/login"
	 else 
	 	
	 end
 end

 def destroy
 	@user = User.find(params[:id])
 	@user.destroy

 	redirect_to "/admin/customers"
 end
 
end
