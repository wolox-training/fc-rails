module Api
  module V1
    class BookController < ApiController
      def index
        render json: Book.all
      end

      def show
        render json: Book.find(books_params)
      end

      private

      def books_params
        params.permit(:id)['id']
      end
    end
  end
end
