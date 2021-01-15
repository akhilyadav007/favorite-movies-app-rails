class UsersessionsController < ApplicationController
  def new
    @user = User.new
  end
  def create
    user = User.find_by_username(params[:username])
    if user 
      session[:user_id] = user.id
      redirect_to users_list_path, notice: "Logged in!"
    else
      user = User.new(username: params[:username])
      user.save
      session[:user_id] = user.id
      redirect_to users_path, notice: "Logged in!"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to sessions_new_path, notice: "Logged out!"
  end

end
