class AddFavGameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fav_game, :string, :default => nil
  end
end
