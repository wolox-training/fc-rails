class OpenLibraryService
  include HTTParty
  def book_info(isbn)
    query = {
      :bibkeys => 'ISBN:' + isbn,
      :format => 'json',
      :jscmd => 'data'
    }
    HTTParty.get(
      'https://openlibrary.org/api/books?',
      :query => query
    )
  end
end
