class FiledToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :name, :string
    add_column :movies, :geners, :string
    add_column :movies, :year, :date
    add_column :movies, :director, :string
    add_column :movies, :main_star, :string
    add_column :movies, :description, :string
    add_column :movies, :Favorited, :integer, :default => 0
    
  end
end
