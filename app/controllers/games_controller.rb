class GamesController < ApplicationController
  # GET /games
  # GET /games.json
  def index
    @games = Game.all.sample(10)

# double = []
# @games.each |img|
# @double << img
# @double .shuffle!

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end
end


# @pics =[1,2,3]

# @pics.each do |p|
#   end

#   @pics.shuffle!
#   =>  [2,1,3]

#   @games = Game.all.sample(10)  sample pulls a sample  size from DB