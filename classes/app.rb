# require_relative 'book'
require_relative 'author'
require_relative 'label'
require_relative 'booksModule'
class App
include booksModule
    def initialize 

        @genres = []
        @authors = []
        @sources = []
        @label = []
        @books = []
        @music_albums = []

    end
   
    end
    def list_music_albums
        if @music_albums.empty?
            puts "There are no books available"
            else
                @music_albums.each {|music, index| puts "#{music.id} #{music.genre.name} #{music.source.name}"}
        end
    end


    def list_genres


        if @genres.empty?
            puts "There are no files for genre"
        else
            puts 'Select genre by index'
            @genres.each {|genre, index| puts "[#{index}] --> Name: #{genre.name}" }

        end
    end

    def list_authors
        if @authors.empty
            puts "There are no list for authors"
        else
            @authors.each {|author, index| puts "[#{index}  --> First Name: #{author.first_name} Last Name: #{author.last_name}"}

        end
    end

    def list_sources
        if @sources.empty
            puts "There are no list for authors"
        else
            @sources.each {|source, index| puts "[#{index}  --> Source: #{source.name}"}

        end
    end
    def list_labels
        if @labels.empty
            puts "There are no list for authors"
        else
            @labels.each do |label|
            puts "Label ID #{label.id} --> Title: #{label.title} color: #{label.color}"

        end
    end
    
   
   

    def archived?
        archived = gets.chomp.downcase
        case archived
        when 'y'
            true
        when 'n'
            false
        else
            puts 'Enter a valid response'
        end
    end
end


if genres.empty?        
    puts "There are no files for genre"
 else
     
     @genres.each {|genre, index| puts "[#{index}] --> #{genre.name}" }
     
 end
 g_index = gets.chomp.to_i
 puts "#{genres[index].name} selected"
 genre =  @genres[index]

 puts "Select author by index"
 list_authors
 a_index = gets.chomp.to_i
 puts "#{@authors[a_index].first_name} has been selected"

 puts "Select source by index"
 list_sources
 s_index = gets.chomp.to_i
 puts "#{@sources[s_index].name} has been selected"

 puts "Select label by index"
 list_labels
 l_index = gets.chomp.to_i
 puts "#{@labels[l_index].title} has been selected"



 puts "archived? [Y/N]"
 archived = archived?

 @books.push(Book.new())

