class AddHasManyUsersToGame < ActiveRecord::Migration
  def change
  	add_reference :users, :game, index: true
  end
end
