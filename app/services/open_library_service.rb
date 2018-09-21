class OpenLibraryService
  include HTTParty
  def book_info(isbn)
    books = HTTParty.get('https://openlibrary.org/api/books?bibkeys=ISBN:' + isbn + '&format=json&jscmd=data')
  end
end
