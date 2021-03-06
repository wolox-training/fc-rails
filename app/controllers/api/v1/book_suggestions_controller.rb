module Api
  module V1
    class BookSuggestionsController < ApiController
      # rubocop:disable LexicallyScopedActionFilter
      skip_before_action :authenticate_api_v1_user!, only: %i[new create]
      # rubocop:enable LexicallyScopedActionFilter

      def create
        book_suggestion = BookSuggestion.new(book_suggestions_create_params)
        if book_suggestion.save
          render json: book_suggestion
        else
          render json: { errors: book_suggestion.errors }, status: :bad_request
        end
      end

      private

      def book_suggestions_create_params
        params.permit(:author, :title, :link, :editorial, :publisher, :year, :price, :user_id)
      end
    end
  end
end
