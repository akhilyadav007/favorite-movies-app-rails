class MoviesController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @movies = Movie.all
  end

  def show
   @movies = Movie.find(params[:id])
  end

  def create
    @movies = Movie.new(movies_params)
    if @movies.save
      redirect_to @movies
    else
      render 'new'
    end
  end

  def destroy
    @movies = Movie.find(params[:id])
    @movies.destroy
    redirect_to @movies
  end

  def edit
    @movies = Movie.find(params[:id])
  end

  def update
    @movies = Movie.find(params[:id])
    if @movies.update(movies_params)
      redirect_to @movies
    else
      render 'edit'
    end   
  end

  def userlist
    @users = User.all
  end

  def userfav
    @favorites = User.find(params[:user_id]).favorites
  end

  private

  def movies_params
    params.require(:movie).permit(:name, :geners, :year, :director, :main_star, :description, :Favorited)
  end
end
