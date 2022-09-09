class Item
  attr_accessor :published_date
  attr_reader :id, :archived, :label, :source, :author, :genre

  def initialize(published_date, archived: false, id: nil)
    @id = id.nil? ? Random.rand(1..1000) : id
    @published_date = published_date
    @archived = archived
  end

  def source=(source)
    return if source.nil? # return if source is nil

    @source = source

    source.add_item(self) unless source.items.include?(self) # add source if the source is not in the items
  end

  def genre=(genre)
    return if genre.nil? # return if genre is nil

    @genre = genre
    genre.add_item(self) unless genre.items.include?(self) # add genre if gener is not in teh items
  end

  def author=(author)
    return if author.nil? # return if author is nil

    @author = author
    author.add_item(self) unless author.items.include?(self) # add author  if the author is not in the items
  end

  def label=(label)
    return if label.nil? # return if label is nil

    @label = label
    label.add_item(self) unless label.items.include?(self) # add label to items array  if it is not in the items
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    current_year = Time.now.year
    current_year - @published_date > 10
  end
end
