module Api
  module V1
    class ApiController < Api::V1::BaseApiController
      before_action :authenticate_api_v1_user!
    end
  end
end
