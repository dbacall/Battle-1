require 'player'

describe Player do
  it 'return its name' do
    player = Player.new("Andine")
    expect(player.name).to eq "Andine"
  end
end