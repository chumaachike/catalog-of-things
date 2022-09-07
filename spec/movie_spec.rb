require './classes/movie'
describe Movie do
  context 'When movie class is tested it' do
    before(:each) do
      @movie = Movie.new('2022-10-06', true, true)
    end

    it 'should display published date equals to 022-10-06' do
      expect(@movie.publish_date).to eql '2022-10-06'
    end

    it ' can_be_archived should return true' do
      expect(@movie.can_be_archived?).to be true
    end
  end
end
