module Api
  module V1
    module DeviseTokenAuthCustom
      #module Sessions
        class SessionsController < DeviseTokenAuth::SessionsController
          # rubocop:disable Rails/LexicallyScopedActionFilter
          skip_before_action :authenticate_api_v1_user!, only: [:create]
          # rubocop:enable Rails/LexicallyScopedActionFilter
        end
      #end
    end
  end
end
