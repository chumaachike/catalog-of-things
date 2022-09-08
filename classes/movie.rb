require_relative 'item'
class Movie < Item
  attr_accessor :silet

  def initialize(publish_date, archived: false, silent: false, id: nil)
    super(publish_date, archived: archived, id: id)
    @silent = silent
  end

  def can_be_archived?
    return true if super || @silent

    false
  end
end
