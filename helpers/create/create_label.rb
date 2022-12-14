require_relative '../lib/label'
require_relative 'create'

class CreateLabel < Create
  def self.add
    puts '---- Add label information -----'
    puts 'Ente Label Title: '
    title = gets.chomp.strip
    puts 'Enter Label Color: '
    color = gets.chomp.strip
    label = Label.new(title, color)
    puts 'Label created seccussfuly' unless label.nil?
    label
  end

  def self.create_object(labels)
    labels.map do |label|
      Label.new(label['title'], label['color'], id: label['id'])
    end
  end
end
