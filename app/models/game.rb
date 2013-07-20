class Game < ActiveRecord::Base
  attr_accessible :img_url, :img_details
  has_and_belongs_to_many  :users
end
