require_relative 'item'
class Movie < Item
  attr_accessor :silet

  def initialize(published_date, silent: false, archived: false, id: nil)
    super(published_date, archived: archived, id: id)
    @silent = silent
  end

  def can_be_archived?
    return true if super || @silent

    false
  end

  def to_hash
    hash = {
      class: 'Movie',
      id: @id,
      silent: @silent,
      published_date: @published_date,
      archived: @archived

    }
    hash[:label_id] = @label.id unless @label.nil?
    hash[:source_id] = @source.id unless @source.nil?
    hash[:author_id] = @author.id unless @author.nil?
    hash[:genre_id] = @genre.id unless @genre.nil?
    hash
  end
end
