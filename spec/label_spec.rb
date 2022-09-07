require './classes/label'
describe Label do
  context 'when testing the label class' do
    before(:each) do
      @label = Label.new('Dark_Rose', 'brown')
    end
  end

  it 'id should contain random interger' do
    expert(@label.id).to between(0, 10_000).inclusive
  end
  it 'receives 3 parameters and returns a Label object' do
    expect(@label).to be_an_instance_of Label
  end

  it 'title should be Dark_Rose' do
    expect(@label.title).to eql 'Dark_Rose'
  end
  it 'color should be brown' do
    expect(@label.color).to eql 'brown'
  end
end
