class Score < ApplicationRecord
  belongs_to :user
  belongs_to :game

  accepts_nested_attributes_for :game

  # def game_attributes=(attributes)
  #   self.build_game(attributes)
  # end
end
