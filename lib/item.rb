require 'date'

class Item
  attr_accessor :published_date, :archived
  attr_reader :id, :label, :source, :author, :genre

  def initialize(published_date, archived: false)
    @id = Random.rand(1..1000)
    @published_date = Date.parse(published_date)
    @archived = archived
  end

  def source=(source)
    return if source.nil? # return if source is nil

    @source = source

    source.add_item(self) unless source.items.includes?(self) # add source if the source is not in the items
  end

  def genre=(genre)
    return if genre.nil? # return if genre is nil

    @genre = genre
    genre.add_item(self) unless genre.items.includes?(self) # add genre if gener is not in teh items
  end

  def author=(author)
    return if author.nil? # return if author is nil

    @author = author
    author.add_item(self) unless author.items.includes?(self) # add author  if the author is not in the items
  end

  def label=(label)
    return if label.nil? # return if label is nil

    @label = label
    label.add_item(self) unless label.items.includes?(self) # add label to items array  if it is not in the items
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    current_year = Date.today.year
    current_year - @published_date.year > 10
  end
end
