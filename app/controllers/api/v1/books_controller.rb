module Api
  module V1
    class BookController < Api::V1::ApiController
      def index
        @books = Book.all
        render_paginated json: @books
      end

      def show
        @book = Book.find(params[:id])
        render json: @book
      end

      private

      def books_params
        params.permit(:id)
      end
    end
  end
end
