require_relative '../source'
describe Source do
  context 'when the Source class is tested ' do
    before(:each) do
      @source = Source.new('online shop')
    end
    it "name should equal to 'online shop'" do
      expect(source.name).to eql 'online shop'
    end

    it 'id should contain random interger' do
      expert(@source.id).to between(0, 10_000).inclusive
    end
  end
end
