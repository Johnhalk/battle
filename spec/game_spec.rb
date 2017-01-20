require 'game'

describe Game do
  let(:player_1) {instance_double("Player")}
  let(:player_2) {instance_double("Player")}
  subject(:game) { described_class.new(player_1: player_1 , player_2: player_2) }

  it "returns player 1" do
    expect(game.player_1).to eq player_1
  end

  it "returns player 2" do
    expect(game.player_2).to eq player_2
  end

  describe '#attack' do
    it 'reduces a players health by 10 points' do
      allow(player_2).to receive(:receive_damage)
      allow(player_1).to receive(:name){ "John" }
      allow(player_2).to receive(:name){ "Mica" }
      allow(player_1).to receive(:health){ 60 }
      allow(player_2).to receive(:health){ 60 }
      expect{game.attack}.not_to raise_error
    end
  end

end
