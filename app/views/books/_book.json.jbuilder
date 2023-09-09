json.extract! book, :id, :title, :cost, :created_at, :updated_at
json.url book_url(book, format: :json)
