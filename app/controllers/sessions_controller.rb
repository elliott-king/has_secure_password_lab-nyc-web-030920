class SessionsController < ApplicationController
  def create
    user = User.find_by(name: params[:user][:name])
    authenticated = user.try(:authenticate, params[:user][:password])
    # user = User.new(name: params[:name], password: params[:password])
    if authenticated
      session[:user_id] = user.id
    end
    # byebug
  end
end
