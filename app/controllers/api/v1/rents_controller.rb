module Api
  module V1
    class RentsController < ApiController
      def create
        rent = Rent.create(rents_create_params)
        render json: rent
      end

      private

      def rents_create_params
        params.permit(:user_id, :book_id, :from, :to)
      end
    end
  end
end
