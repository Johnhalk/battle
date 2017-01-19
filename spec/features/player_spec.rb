require 'player'

describe Player do
let(:name) { double :name }
subject(:player) {described_class.new(:name, :health)}

  it "returns its name when asked" do
  expect(player.call_name).to eq(:name)
end

  describe '#attack' do
    it 'reduces a players health by 10 points' do
      expect { player.attack }.to change(player, :health).by(-10)
    end
  end

end
