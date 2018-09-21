class OpenLibraryService
  include HTTParty
  def book_info(isbn)
    books = HTTParty.get('https://openlibrary.org/api/books?bibkeys=ISBN:' + isbn + '&format=json&jscmd=data')

    ISBN
Title
Subtitle
Number of pages
Authors (Array con los nombres de los autores)
  end
end
