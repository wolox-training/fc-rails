module Api
  module V1
    class BooksController < ApiController
      def index
        render json: Book.all
      end

      def show
        render json: Book.find(books_params['id'])
      end

      private

      def books_params
        params.permit(:id)
      end
    end
  end
end
