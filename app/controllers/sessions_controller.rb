class SessionsController < ApplicationController
	def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.password_digest == params[:password]
      session[:user_id] = user.id

      #check if admin or customer
      if(user.email == 'admin@admin.com')
        redirect_to admin_dashboard_path, notice: "Logged in!"
      else 
        redirect_to customer_dashboard_path, notice: "Welcome  Back!";
      end
    else
      # flash.now[:alert] = "Email or password is invalid"
      # render "new"
      redirect_to login_url, notice: "Email or Password is invalid!";
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "Logged out!"
  end
end
