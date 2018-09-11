class ApiController < ApplicationController
  before_action :authenticate_api_v1_user!
  include DeviseTokenAuth::Concerns::SetUserByToken
  protect_from_forgery with: :null_session
end
