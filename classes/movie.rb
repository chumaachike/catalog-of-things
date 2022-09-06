require_relative 'item'
class Movie < Item

    def initialize(genre. author, source, label, publish_date, archived , id=nil, silet: true)
        super(id, genre, author, source, label, publish_date, archived)
        @id = id || Random.rand(0.. 10_000) 
        @silet: silet
        archived 
        
    end
   
end