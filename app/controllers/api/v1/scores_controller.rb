class Api::V1::ScoresController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    @scores = Score.all
  end

  def create
    @score = Score.new(score_params)
    @score.user_id = current_user.id
    @score.game_id = current_user.game.id
    if @score.save
      render json: @score
    else
      render json: { message: "Score not created." }
    end
  end

  private

  def score_params
    params.require(:score).permit(:score)
  end

end
