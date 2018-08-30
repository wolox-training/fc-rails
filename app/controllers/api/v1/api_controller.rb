module Api
  module V1
    class ApiController < ApplicationController
      before_action :authenticate_api_v1_user!
      skip_before_action :authenticate_api_v1_user!
      include DeviseTokenAuth::Concerns::SetUserByToken
      protect_from_forgery with: :null_session
    end
  end
end
