class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :category
      t.string :difficulty
      t.integer :num_questions
      t.timestamps
    end
  end
end
