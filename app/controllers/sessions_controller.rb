class SessionsController < ApplicationController
  def new
  end
  # Sign in
  def create
    @user = User.find_by(email: params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      redirect_to honeydos_path, notice: "logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end
  # Sign out
  def destroy
    session[:user_id] = nil
    redirect_to honeydos_path, notice: "logged out"
  end

end
