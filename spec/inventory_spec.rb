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
    it 'adds an item to the stock' do
      inventory.add(t_shirt)
      expect(inventory.stock[0]).to be_a(Merchandise)
    end
  end
end
