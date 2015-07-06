class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :game_id
      t.integer :number
      t.timestamps null: false
    end
  end
end
