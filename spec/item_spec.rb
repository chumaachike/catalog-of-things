require_relative '../classes/item'

describe Item do
  item1 = Item.new('12-10-2020', false)
  item2 = Item.new('05-12-2001', false)
  it 'an_be_achived method works properly' do
    expect item1.can_be_archived?.to eq(false)
    expect item2.can_be_archived?.to eq(true)
  end
end
