require './classes/book'
require 'date'

describe Book do
  context 'Initizlize book' do
    book1 = Book.new('o realy', 'Good', '12-06-2020', archived: false, id: 501)
    book2 = Book.new('o realy', 'Bad', '12-06-2020', archived: true, id: 502)

    it 'should be return book id, cover_state, publisher and published date' do
      expect(book1.id).to eq 501
      expect(book2.id).to eq 502
      expect(book1.publisher).to eq 'o realy'
      expect(book1).to be_an_instance_of Book
    end

    it 'Book should be class' do
      expect(Book).to be_a Class
    end
  end
  context 'can_be_archived? spec' do
    published_date = Time.now.year - 10
    book3 = Book.new('o realy', 'Bad1', published_date, archived: true, id: 503)
    it 'should retun false published date less than 10  and cover state not Bad ' do
      expect(book3.can_be_archived?).to be false
    end
    published_date = Time.now.year - 15
    book4 = Book.new('o realy', 'Bad1', published_date, archived: true, id: 504)
    it 'should retun true published date greater than 10  and cover state not Bad ' do
      expect(book4.can_be_archived?).to be true
    end
    published_date = Time.now.year - 15
    book5 = Book.new('o realy', 'Bad', published_date, archived: true, id: 505)
    it 'should retun true published date greater than 10  and cover state is Bad ' do
      expect(book5.can_be_archived?).to be true
    end
  end
end
