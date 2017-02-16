class RemoveFavGameFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :fav_game
  end
end
