class OpenLibraryService
  include HTTParty
  def book_info(isbn)
    return HTTParty.get('https://openlibrary.org/api/books?bibkeys=ISBN:' + isbn + '&format=json&jscmd=data')
  end
end
