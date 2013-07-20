class Game < ActiveRecord::Base
  attr_accessible :img_url, :img_details
  has_many_belongs_to :users
end
