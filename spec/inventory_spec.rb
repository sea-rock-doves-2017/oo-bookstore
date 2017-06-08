require_relative '../inventory'
require_relative '../book'

describe Inventory do
  let(:inventory) { Inventory.new }
  let(:t_shirt) { Merchandise.new({
    name: 'Star Warts T-shirt',
    list_price: 10,
    cost: 5,
    id: 1
    })
  }

  context 'attributes' do
    it 'has an accessible stock attribute' do
      expect(inventory.stock).to be_an(Array)
    end
  end
  describe '#add' do
    xit 'adds an item to the stock' do
      expect{inventory.add(t_shirt)}.to change{inventory.stock}.by(1)
    end
  end
end
