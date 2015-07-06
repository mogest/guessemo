class Guess < ActiveRecord::Base
  belongs_to :game

  validates :number, inclusion: {in: 1..100}

  def status
    if number < game.target_number
      "too low"
    elsif number > game.target_number
      "too high"
    else
      "correct"
    end
  end
end
