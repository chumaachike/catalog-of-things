require_relative '../helpers/lib/source'
describe Source do
  context 'when the Source class is tested ' do
    before(:each) do
      @source = Source.new('online shop')
    end
    it "name should equal to 'online shop'" do
      expect(@source.name).to eql 'online shop'
    end

    it 'id should contain random interger' do
      expect(@source.id).to be_between(0, 10_000).inclusive
    end
  end
end
