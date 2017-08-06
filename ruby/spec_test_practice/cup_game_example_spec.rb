require_relative "cup_game_example"

describe CupGame do
  let(:game) {CupGame.new}


  it "shows that the value at 0 is ball" do
    expects (game.cups[0]). to eq ("ball")
  end
end
