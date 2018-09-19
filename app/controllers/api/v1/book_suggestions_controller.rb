module Api
  module V1
    class BookSuggestionsController < ApiController
      skip_before_action :authenticate_api_v1_user!, only: %i[new create]

      def create
        book_suggestion = BookSuggestion.new(book_suggestions_create_params)
        book_suggestion.save!
        render json: book_suggestion
      end

      private

      def book_suggestions_create_params
        params.permit(:author, :title, :link, :editorial, :publisher, :year, :price, :user_id)
      end
    end
  end
end
