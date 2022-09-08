# require_relative 'item'
class Source
  attr_accessor :name
  attr_reader :items, :id

  def initialize(name, id = nil)
    @id = id || Random.rand(0..10_000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.source = self
  end
end
