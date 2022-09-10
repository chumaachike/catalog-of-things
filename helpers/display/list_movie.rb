require_relative 'list'

class ListMovie < List
  def self.display(movies)
    puts 'No movie available' if movies.empty?
    movies.each do |movie|
      movie_status = movie.archived ? 'Archived' : 'Not Archived'
      label = movie.label.title
      author = movie.author.first_name
      source = movie.source.name
      puts "Movie id: #{movie.id}, published date : #{movie.published_date}, archvied status: #{movie_status}"
      puts "label: #{label}, author: #{author},soucrce: #{source} "
    end
  end
end
