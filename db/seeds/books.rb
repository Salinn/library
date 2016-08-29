total_books = 100
books = []

(0...total_books).each do |book_number|
    books.push(
        {
            title: Faker::Book.title,
            author: Faker::Book.author,
            section: Faker::Book.genre,
            library_id: 1 + Random.rand(10)
        }
    )
end

Book.create!(books)