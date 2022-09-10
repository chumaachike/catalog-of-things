require_relative 'list'

class ListMusicAlbum < List
  def self.display(music_albums)
    puts 'No book available' if music_albums.empty?
    music_albums.each do |m|
      music_album_status = m.archived ? 'Archived' : 'Not Archived'
      label = m.label.title
      author = m.author.first_name
      source = m.source.name
      puts "Music id: #{m.id},published date : #{m.published_date}, archvied status : #{music_album_status}"
      puts "label: #{label}, author: #{author},soucrce: #{source} "
    end
  end
end
