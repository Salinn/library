#no dependencies
load 'db/seeds/libraries.rb'
load 'db/seeds/users.rb'

#dependencies
load 'db/seeds/books.rb' #dependant on libraries
load 'db/seeds/book_users.rb' #dependant on book and user