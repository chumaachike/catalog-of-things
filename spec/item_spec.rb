require './classes/item'

describe Item do
  context 'Test Item' do
    publish_date = Time.now.year - 10
    item1 = Item.new(publish_date, archived: false)
    publish_date = Time.now.year - 11
    item2 = Item.new(publish_date, archived: true)

    it 'an_be_achived method works properly' do
      expect(item1.move_to_archive).to be nil
      expect(item2.move_to_archive).to be true
    end
  end
end
