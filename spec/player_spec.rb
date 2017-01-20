require 'player'

describe Player do
let(:name) { double :name }
subject(:player) {described_class.new(:name)}

  it "returns its name when asked" do
  expect(player.call_name).to eq(:name)
end

end
