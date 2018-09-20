class ApiController < BaseApiController
  include DeviseTokenAuth::Concerns::SetUserByToken
end
