module Api
  module V1
    class BookSuggestionsController < ApiController
      def create
        bookSuggestion = BookSuggestion.new(book_suggestions_create_params)
        bookSuggestion.save!
        render json: bookSuggestion
      end

      private

      def book_suggestions_create_params
        params.permit(:author, :title, :link, :editorial, :publisher, :year, :price, :user_id)
      end
    end
  end
end
