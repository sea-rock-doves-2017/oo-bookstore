class Inventory
  attr_reader :stock
  def initialize
    @stock = []
  end

  def add(item)
    @stock << item
  end

  def find_by(key, value)
    @stock.find do |item|
      item.send(key) == value
    end
  end

  def damage!(id)
    book = find_by(:id, id)
    raise 'invalid item id given' if book.class != Book
    book.damage!
  end
end
