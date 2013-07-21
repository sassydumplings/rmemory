class GamesController < ApplicationController
  # GET /games
  # GET /games.json
  def index
    # comment code
    @games = Game.all.sample(6)
    @rand_arr = []
    i = 1
    while i < 3
        @games.each { |i| @rand_arr << i }
        i += 1
    end
    @rand_arr.shuffle!


    #@games.each |img|
    # @double << img
    # @double .shuffle!

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end
end


