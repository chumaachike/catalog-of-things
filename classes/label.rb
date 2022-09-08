require_relative 'item'
class Label
  attr_accessor :title, :color, :id
  attr_reader :items

  def initialize(title, color, id = nil)
    @id = id || Random.rand(0..10_000)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.label = self
  end
end
