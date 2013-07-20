class CreateGamesUsersTable < ActiveRecord::Migration
  def up
    create_table :games_users, :id => false do |t|
            t.references :game
            t.references :user
     end
  end

  def down
    drop_table :games_users
  end
end
