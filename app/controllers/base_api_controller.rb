class BaseApiController < ApplicationController
  before_action :authenticate_api_v1_user!
  protect_from_forgery with: :null_session
end
