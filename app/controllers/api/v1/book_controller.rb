module Api
  module V1
    class BookController < ApiController
      def index
        @books = Book.all
        render_paginated json: @books
      end

      def show
        @book = Book.find(params[:id])
        render json: @book
      end
    end
  end
end
