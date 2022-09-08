require_relative 'book'
require_relative 'author'
require_relative 'label'
require_relative 'booksModule'
require 'fileutils'
class App
include booksModule
    def initialize 

        @genres = []
        @authors = []
        @sources = []
        @label = []
        @books = load_data(books)
        @music_albums = []

    end
   
    end
    # def list_music_albums
    #     if @music_albums.empty?
    #         puts "There are no books available"
    #         else
    #             @music_albums.each do | music |
    #              puts "#{music.id} #{music.published_date} #{music.source.name}"
    #             end
    #     end
    # end
    def store(file, data )
        file = File.open("../data/#{file}.json", 'w')
        file.write(data)
    end

    def load_data(file_name)
        file = "../data/#{file}.json"
        return [] unless File.exist?(file)

        file = File.open(file, 'r')
        file_data = JSON.parse(file.read)
        file.close
        file_data
    end



end

