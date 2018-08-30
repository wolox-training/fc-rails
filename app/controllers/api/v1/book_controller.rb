module Api
  module V1
    class BookController < Api::V1::ApiController
      def index
        @books = Book.all
        render json: @books
      end
    end
  end
end
