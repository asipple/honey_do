class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # if new user they are automatically signed in
      session[:user_id] = @user.id
      redirect_to honeydos_path, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
