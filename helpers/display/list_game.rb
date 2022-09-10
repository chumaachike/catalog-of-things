require_relative 'list'

class ListGame < List
  def self.display(games)
    puts 'No game available' if games.empty?
    games.each do |game|
      game_status = game.archived ? 'Archived' : 'Not Archived'
      label = game.label.title
      author = game.author.first_name
      source = game.source.name
      puts "game id:#{game.id},  published date: #{game.published_date}, archvied status: #{game_status}"
      puts "label: #{label}, author: #{author},soucrce: #{source} "
    end
  end
end
