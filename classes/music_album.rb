require 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, archived: false, on_spotify: false)
    super(id, publish_date, archived: archived)
    @on_spotify = on_spotify
    @archived = archived
  end

  private

  def can_be_archived?
    return true if super && @on_spotify == true

    false
  end
end
