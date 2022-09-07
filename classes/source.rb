require_relative 'item'
class Source
  attr_accessor :name
  attr_reader :items

  def initialize(name, _id = nil)
    @id = Random.rand(0..10_000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.source = self
  end
end
