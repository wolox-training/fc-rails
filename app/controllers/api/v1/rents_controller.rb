module Api
  module V1
    class RentsController < ApiController
      def create
        rent = Rent.new(rents_create_params)

        if rent.save
          NotificationGeneratorMailer.with(rent: rent).new_rent_notification.deliver_later
          render json: rent
        else
          render json: { errors: rent.errors }, status: :bad_request
        end
      end

      def index
        render json: Rent.where(rents_index_params)
      end

      private

      def rents_create_params
        params.permit(:user_id, :book_id, :from, :to)
      end

      def rents_index_params
        params.permit(:user_id)
      end
    end
  end
end
