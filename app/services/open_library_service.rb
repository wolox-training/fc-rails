class OpenLibraryService
  include HTTParty
  def book_info(isbn)
    HTTParty.get('https://openlibrary.org/api/books?bibkeys=ISBN:' + isbn + '&format=json&jscmd=data')
  end
end
