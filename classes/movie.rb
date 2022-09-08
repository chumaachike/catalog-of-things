require_relative 'item'
class Movie < Item
  attr_accessor :silent

  def initialize(published_date, archived: true, silent: true)
    super(id, published_date, archived: archived)
    @silent = silent
  end

  def move_to_achive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    return true if super || @silent

    false
  end
end
