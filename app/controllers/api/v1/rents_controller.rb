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
        # response = {
        #   'rent': rent,
        #   'book': Book.find_by_id(params[:book_id]),
        #   'user': User.find_by_id(params[:user_id])
        # }
        render json: rent#RentsController.new(rent)
      end

      private

      def rents_params
        params.permit(:user_id, :book_id, :from, :to)
      end
    end
  end
end
