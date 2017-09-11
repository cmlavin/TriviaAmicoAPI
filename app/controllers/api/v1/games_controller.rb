class Api::V1::GamesController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game
    else
      render json: { message: "Game not created." }
    end
  end

  private

  def game_params
    params.require(:game).permit(:category, :difficulty, :num_questions)
  end

end
