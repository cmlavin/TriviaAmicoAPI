class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :score
      t.integer :user_id
      t.integer :game_id
      t.timestamps
    end
  end
end
