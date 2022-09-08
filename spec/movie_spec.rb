require './classes/movie'

describe Movie do
  context 'initialize movie' do
    publish_date = Time.now
    movie = Movie.new(publish_date, archived: true, silent: true, id: 601)
    it 'Movie Should be class' do
      expect(Movie).to be_a Class
    end

    it 'movie should be an instance of Movie' do
      expect(movie).to be_an_instance_of Movie
    end
  end

  context 'Test can be archived method' do
    publish_date = Time.now.year - 5
    movie1 = Movie.new(publish_date, archived: true, silent: true, id: 602)

    it 'should return true if silent is true' do
      expect(movie1.can_be_archived?).to be true
    end
    movie2 = Movie.new(publish_date, archived: true, silent: false, id: 603)
    it 'should return false if silent is fasle and date difference' do
      expect(movie2.can_be_archived?).to be false
    end
    publish_date = Time.now.year - 15
    movie3 = Movie.new(publish_date, archived: true, silent: false, id: 603)
    it 'should return f if silent is fasle and date difference greater than 10' do
      expect(movie3.can_be_archived?).to be true
    end
  end
end
