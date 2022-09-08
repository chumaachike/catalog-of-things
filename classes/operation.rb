def display(app)
    puts'
    [1]  --> List all books
    [2]  --> List all music albums
    [3]  --> List all movies
    [4]  --> List all games
    [5]  --> List all genre
    [6]  --> List all labels
    [7]  --> List all authors
    [8]  --> List all sources
    [9]  --> Add a book
    [10] --> Add a music album
    [11] --> Add a movie
    [12] --> Add a game
    '
    puts 'Select from the List'

    key = gets.chomp.to_i
    operate = Operation.new()
    operate.key_select(key, app)
    
end

class Operation

    def key_select(key, app)
        case key
        when 1
            app.list_book
        when 2
            app.list_music_albums
        when 3
            app.list_movies
        when 4
            app.list_games
        when 5
            app.list_genres
        when 6
            app.list_labels
        when 7 
            app.list_authors
        when 8 
            app.list_sources
        when 9
            app.add_book
        when 10
            app.add_music
        when 11
            app.add_movie
        when 12
            app.add_game
        else
            puts 'Enter a valid input'
            display(app)            
           end
    


    end

end