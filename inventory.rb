class Inventory
  attr_reader :stock
  def initialize
    @stock = []
  end

  def add(item)
    @stock << item
  end
end
