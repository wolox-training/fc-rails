module Api
  module V1
    module DeviseTokenAuthCustom
      class SessionsController < DeviseTokenAuth::SessionsController
        skip_before_action :authenticate_api_v1_user!, only: [:create]
      end
    end
  end
end
