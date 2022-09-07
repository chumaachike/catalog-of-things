require './classes/book'

describe Book do
  context 'Initizlize book' do
    book1 = Book.new('o realy', 'Good', '12-06-2020', archived: false, id: 501)
    book2 = Book.new('o realy', 'Bad', '12-06-2020', archived: true, id: 502)

    it 'Can_be_archivedd? should return  false' do
      expect(book1.can_be_archived?).to be false
      expect(book2.can_be_archived?).to be true
    end
    it 'should be return book id, cover_state, publisher and published date' do
      expect(book1.id).to eq 501
      expect(book2.id).to eq 502
      expect(book1.publisher).to eq 'o realy'
      expect(book1).to be_an_instance_of Book
    end
  end
end
