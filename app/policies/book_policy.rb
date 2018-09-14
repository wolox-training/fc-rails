class BookPolicy < ApplicationController
  attr_reader :user, :book

  def initialize(user, book)
    @user = user
    @book = book
  end

  def create?
    Rent.where(['"to" > ? AND book_id = ?', 'now()', book.id]).empty?
  end
end
