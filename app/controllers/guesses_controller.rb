class GuessesController < ApplicationController
  def create
    game = Game.find(params[:game_id])

    game.guesses.create!(params.require(:guess).permit(:number))

    redirect_to game
  end
end
