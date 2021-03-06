json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :section, :library_id
  json.url book_url(book, format: :json)
end
