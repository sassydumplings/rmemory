class GamesController < ApplicationController


  before_filter :require_login

  def index
    # comment code
    @games = Game.all.sample(6)
    @rand_arr = []
    i = 1
    while i < 3
        @games.each { |k| @rand_arr << k }
        i += 1
    end
    @rand_arr.shuffle!

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @games }
    end
  end

  def require_login
    if current_user == false
       redirect_to(login_path, :notice => 'Need to login')
    end
  end

  def percentage
    calculate how many kanjii compare to 100
  end
end


