require_relative 'merchandise'
class Book < Merchandise
  attr_reader :genre, :author, :isbn, :condition
  def initialize(args)
    super
    @genre = args.fetch(:genre)
    @author = args.fetch(:author)
    @isbn = args.fetch(:isbn)
    @condition = args.fetch(:condition, 'new')
  end
end
