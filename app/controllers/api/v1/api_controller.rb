class Api::V1::ApiController < Api::V1::BaseApiController
  before_action :authenticate_api_v1_user!
end
