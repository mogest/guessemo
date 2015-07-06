class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :target_number
      t.integer :maximum_guesses
      t.timestamps null: false
    end
  end
end
