class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
  end

  def new
  end

  def create
    game = Game.create!(maximum_guesses: 6, target_number: rand(1..100)) 
    redirect_to game
  end
end
