class CreateUsers < ActiveRecord::Migration
  def change
    create_table "users", :force => true do |t|
      t.string   "username",         :null => false
      t.string   "email"
      t.string   "crypted_password"
      t.string   "salt"
      t.timestamps
    end
  end
end
