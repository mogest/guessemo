class Game < ActiveRecord::Base
  has_many :guesses

  validates :target_number, inclusion: {in: 1..100}
  validates :maximum_guesses, presence: true

  def guesses_remaining
    maximum_guesses - guesses.count
  end

  def lost?
    guesses_remaining <= 0
  end

  def won?
    guesses.any? && guesses.last.number == target_number
  end

  def in_progress?
    !won? && !lost?
  end
end
