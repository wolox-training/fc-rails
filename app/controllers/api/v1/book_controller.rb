module Api
  module V1
    class BookController < Api::V1::ApiController
      def index
        render plain: "OK"
      end
    end
  end
end
