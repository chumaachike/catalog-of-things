require_relative 'item'
class Movie < Item
  attr_accessor :silet

  def initialize(publish_date, archived: false, silet: true)
    super(id, genre, author, source, label, publish_date, archived)
    @id = id || Random.rand(0..10_000)
    @silet = silet
    @archived = archived
  end

  def move_to_achive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    current_year = Date.today.year
    current_year - @published.year > 10
  end
end
