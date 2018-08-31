module Api
  module V1
    class ApiController < ApplicationController
      before_action :authenticate_api_v1_user!
      # rubocop:disable Rails/LexicallyScopedActionFilter
      skip_before_action :authenticate_api_v1_user!, only: [:create]
      # rubocop:enable Rails/LexicallyScopedActionFilter
      include DeviseTokenAuth::Concerns::SetUserByToken
      protect_from_forgery with: :null_session
    end
  end
end
