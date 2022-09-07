require_relative 'item'
class Movie < Item
  attr_accessor :silet

  def initialize(publish_date, archived: false, silent: false)
    super(id, publish_date, archived: archived)
    @silent = silent
    @archived = archived
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
