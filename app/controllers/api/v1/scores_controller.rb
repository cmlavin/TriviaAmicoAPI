class Api::V1::ScoresController < ApplicationController

  def index
    @scores = Score.all
  end

  def create
    @score = Score.new(score_params)
    if @score.save
      render json: @score
    else
      render json: { message: "Score not created." }
    end
  end


  private

  def score_params
    params.require(:score).permit(:user_id,:score, game_attributes: [:category,:difficulty,:num_questions])
  end

end
