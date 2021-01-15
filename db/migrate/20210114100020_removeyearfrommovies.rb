class Removeyearfrommovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :year, :date
  end
end
