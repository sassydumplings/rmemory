class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :img_url
      t.string :img_details
      t.timestamps
    end
  end
end
