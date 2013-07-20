# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Game.create(img_url: 'assets/one.png', img_details: 'assets/one_detail.png')
# Game.create(img_url: 'assets/two.png', img_details: 'assets/two_detail.png')
# Game.create(img_url: 'assets/four.png', img_details: 'assets/four_detail.png')
# Game.create(img_url: 'assets/five.png', img_details: 'assets/five_detail.png')
# Game.create(img_url: 'assets/six.png', img_details: 'assets/six_detail.png')
# Game.create(img_url: 'assets/seven.png', img_details: 'assets/seven_detail.png')
# Game.create(img_url: 'assets/eight.png', img_details: 'assets/eight_detail.png')
j = 1
for n in 1...25
  Game.create(img_url: 'assets/' + j.to_s + '.png', img_details: 'assets/' + j.to_s + '_detail.png')
  j += 1
end


