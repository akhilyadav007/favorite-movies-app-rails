class UsersController < ApplicationController

  def index
    @movies = Movie.all
    respond_to do |format|
      format.html
      format.json { render json: @movies }
    end
  end

  def show
    @favorite_exists = Favorite.where(movie: @movies,user: current_user) == [] ? false : true
    @movies = Movie.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @movies }
    end
  end
  def list
    @favorites = current_user.favorites
    respond_to do |format|
      format.html
      format.json { render json: @favorites }
    end
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy
  end
end
