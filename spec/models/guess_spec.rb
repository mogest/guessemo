require 'rails_helper'

RSpec.describe Guess do
  let(:game) { Game.create!(target_number: 26, maximum_guesses: 6) }

  describe "status method" do
    it "says 'too low' if the guessed number is too low" do
      guess = game.guesses.create!(number: 10)
      expect(guess.status).to eq "too low"
    end

    it "says 'too high' if the guessed number is too high" do
      guess = game.guesses.create!(number: 90)
      expect(guess.status).to eq "too high"
    end
  end
end
