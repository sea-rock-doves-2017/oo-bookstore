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
end
