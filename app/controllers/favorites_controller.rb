class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(movie: Movie.find(params[:movie]), user: current_user) 
    if favorite.empty?
      favorite = Favorite.create(movie: Movie.find(params[:movie]), user: current_user)
      # @favorite_exists = true
      render json: {status: 'SUCESS', message: 'movie is favorited', data: favorite}
    else
      favorite.destroy_all
      # @favorite_exists = false
      render json: {status: 'SUCESS', message:'movie is unfavorited', data: favorite}
    end
  end
end
