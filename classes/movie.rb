require_relative 'item'
class Movie < Item
  attr_reader :silent

  def initialize(published_date, archived: false, silent: false)
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
