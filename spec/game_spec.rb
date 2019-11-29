require 'game'

describe Game do
  let(:player1) { double :player}
  let(:player2) { double :player}
  subject(:game) { described_class.new }

  describe '#attack' do
    it do
      expect(player2).to receive(:deduct)
      game.attack(player2)
    end
  end
end