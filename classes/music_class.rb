require "./item"
class  Music < Item
    attr_accessor :cover_state, :publisher
    def initialize(publisher, cover_state)
        @publisher = publisher
        @cover_state = cover_state
    end
    def can_be_archived?
        
    end
end