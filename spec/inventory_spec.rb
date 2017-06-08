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
  let(:book) { Book.new({
    name: 'Breakfast of Champions',
    list_price: 10,
    cost: 5,
    id: 2,
    genre: 'Literature',
    author: 'Kurt Vonnegut',
    isbn: '1-800-FREAKIN'
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
  xdescribe '#remove' do
  end
  xdescribe '#damage!' do
    it 'changes the condition of a book to damaged' do
      expect{inventory.damage!(2)}.to change{book.condition}.to('DAMAGED!')
    end
  end
  describe '#find_by' do
    it 'finds an item by given criterea' do
      inventory.add(book)
      expect(inventory.find_by(:id, 2)).to eq(book)
    end
  end
end
