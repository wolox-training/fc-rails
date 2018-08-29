module Api
  module V1
    class BaseApiController < ApplicationController
      include DeviseTokenAuth::Concerns::SetUserByToken
      protect_from_forgery with: :null_session
    end
  end
end
