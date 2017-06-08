class Merchandise
  attr_reader :name, :id, :list_price, :cost
  def initialize(args)
    @name = args.fetch(:name)
    @id = args.fetch(:id)
    @list_price = args.fetch(:list_price)
    @cost = args.fetch(:cost)
  end
end
