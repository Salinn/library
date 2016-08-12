book_user_relations = []
books = Book.all

books.each do |book|
     associations = 1 + Random.rand(3)
    (0...associations).each do |association_number|
        book_user_relations.push(
            {
                user_id: (1 + Random.rand(100)),
                book_id: book.id 
            }
        )
    end
end

BookUser.create!(book_user_relations)