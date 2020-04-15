class UsersController < ApplicationController
  def create
    user = User.create(params.require(:user).permit(:name, :password, :password_confirmation))
    # byebug
    if !user.valid?
      redirect_to new_user_path
    end

    session[:user_id] = user.id
  end
  def new
    @user = User.new
  end
end
