require './classes/movie'
require './classes/item'
describe Movie do
  context 'When movie class is tested it' do
    before(:each) do
      @movie = Movie.new('2022-10-06', true, true)
    end

    it 'movie is not null' do
      expect(@movie).to be_truthy
    end

    it 'should display published date equals to 2022-10-06' do
      expect(@movie.published_date).to eql '2022-10-06'
    end

    it ' can_be_archived should return true' do
      expect(@movie.can_be_archived?).to be true
    end
  end
end
