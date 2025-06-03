class SessionsController < ApplicationController
  def new
    # Renders the login form (views/sessions/new.html.erb)
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.password == params[:password]
      session[:user_id] = user.id
      redirect_to admin_dashboard_path, notice: "Logged in!"
    else
      flash[:alert] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out!"
  end
end
