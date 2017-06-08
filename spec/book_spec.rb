require_relative '../book'

describe Book do
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
    it 'has a name' do
      expect(book.name).to eq('Breakfast of Champions')
    end
    it 'has a list_price' do
      expect(book.list_price).to eq(10)
    end
    it 'has a cost' do
      expect(book.cost).to eq(5)
    end
    it 'has a id' do
      expect(book.id).to eq(2)
    end
    it 'has a genre' do
      expect(book.genre).to eq('Literature')
    end
    it 'has an author' do
      expect(book.author).to eq('Kurt Vonnegut')
    end
    it 'has an isbn' do
      expect(book.isbn).to eq('1-800-FREAKIN')
    end
    it 'has a condition' do
      expect(book.condition).to eq('new')
    end
  end
end
