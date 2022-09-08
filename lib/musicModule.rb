module MusicModule
    def add_music_album
        puts 'Enter pusblished date (YYYY-MM-DD)'
        published_date = gets.chomp
      
        on_spotify = on_spotify?

        puts 'what is the genre of music?'

        genre = gets.chomp


        music_album = Music.new(published_date, nil, on_spotify: on_spotify)
        @musics_albums.push(music_album.)
        genre = Genre.new(genre)
        @genres.push(genre.genre_hash)
        genre.add_item(music_album)
        music_data = JSON.pretty_generate(@music_albums.map(&:to_hash))
        genre_data = JSON.pretty_generate(@genres.)


        

    end

    def on_spotify?
        puts 'is the Music available on sportify? [Y/N]'
        available = gets.chomp.downcase
        case available
        when 'y'
          true
        when 'n'
          false
        else
          puts 'enter a valid response'
    
        end
      end

end