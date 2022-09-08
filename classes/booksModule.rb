module BooksModule
    def list_books
        if @books.empty?
            puts "There are no books available"
            else
                @books.each do | book |
               puts "id: #{book.id}] #{book.published_date} by #{book.author.first_name} #{book.author.last_name}"
        end
    end

    def add_book
        puts 'Enter publisher'
        publisher = gets.chomp

        puts "Enter cover state: select 'good' or 'bad'"
        cover_state = gets.chomp
       
        puts "Enter Published date in (YYYY-MM-DD)"
        published_date = gets.chomp.to_i

        puts "Enter title"
        title = gets.chomp
        
        puts "Enter author first name"
        f_name = gets.chomp

        puts "Enter author last name"
        l_name = gets.chomp

        new_book = Book.new(publisher, published_date, cover_state)
        author = Author.new(f_name, l_name)
        
        @books.push(new_book)
        @authors.push(author)
        author.add_item(new_book)





    end
end