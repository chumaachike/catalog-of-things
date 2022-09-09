require_relative '../helpers/lib/game'

describe Game do
  context 'initialize game ' do
    published_date = Time.now.year - 10
    last_played = Time.now.year - 1
    game = Game.new('Yes', last_played, published_date, archived: true, id: 502)

    it 'Should return ' do
      expect(game.can_be_archived?).to be false
    end
  end
end
