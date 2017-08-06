require_relative 'guess_game_GBears'

describe Game do
  it "checks whether the blank spaces string and the secret word string are the same length" do
    game = Game.new
    expect (blank_spaces.length == secret_word.length).to eq true

  end


end