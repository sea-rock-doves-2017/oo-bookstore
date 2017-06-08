require_relative '../merchandise'

describe Merchandise do
  let(:t_shirt) { Merchandise.new({
    name: 'Star Warts T-shirt',
    list_price: 10,
    cost: 5,
    id: 1
    })
  }
  context 'attributes' do
    it 'has a name' do
      expect(t_shirt.name).to eq('Star Warts T-shirt')
    end
    it 'has a list_price' do
      expect(t_shirt.list_price).to eq(10)
    end
    it 'has a cost' do
      expect(t_shirt.cost).to eq(5)
    end
    it 'has a id' do
      expect(t_shirt.id).to eq(1)
    end
  end
end
