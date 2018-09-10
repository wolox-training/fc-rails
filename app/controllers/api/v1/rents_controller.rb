module Api
  module V1
    class RentsController < ApiController
      def create
        rent = Rent.create(
          'user_id': params[:user_id],
          'book_id': params[:book_id],
          'from': params[:from],
          'to': params[:to]
        )
        render json: rent
      end

      private

      def rents_params
        params.permit(:user_id, :book_id, :from, :to)
      end
    end
  end
end
