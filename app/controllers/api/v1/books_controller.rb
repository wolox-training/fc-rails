module Api
  module V1
    class BooksController < ApiController
      # rubocop:disable LexicallyScopedActionFilter
      skip_before_action :authenticate_api_v1_user!, only: %i[finding_books search_by_isbn]
      # rubocop:enable LexicallyScopedActionFilter

      def index
        render_paginated Book.all
      end

      def show
        render json: Book.find(books_params['id'])
      end

      def search_by_isbn
        open_library_service = OpenLibraryService.new
        book = open_library_service.book_info(params['isbn'])
        if !book.empty?
          render json: book
        else
          render json: { errors: 'ISBN doesn\'t exists.' }, status: :bad_request
        end
      end

      private

      def books_params
        params.permit(:id)
      end
    end
  end
end
