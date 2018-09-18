module Api
  module V1
    class BookSuggestionsController < ApiController
      # rubocop:disable LexicallyScopedActionFilter
      skip_before_action :authenticate_api_v1_user!, only: %i[new create]
      # rubocop:enable LexicallyScopedActionFilter

      def create
        create_new_book_suggestion
      end

      def create_without_auth
        create_new_book_suggestion
      end

      private

      def book_suggestions_create_params
        params.permit(:author, :title, :link, :editorial, :publisher, :year, :price, :user_id)
      end

      def create_new_book_suggestion
        book_suggestion = BookSuggestion.new(book_suggestions_create_params)
        book_suggestion.save!
        render json: book_suggestion
      end
    end
  end
end
