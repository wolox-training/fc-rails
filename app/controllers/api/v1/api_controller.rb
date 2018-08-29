class Api::V1::ApiController < Api::V1::BaseApiController
  before_action :authenticate_user!
end
