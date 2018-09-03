class ApplicationController < ActionController::Base
  include Wor::Paginate
  include DeviseTokenAuth::Concerns::SetUserByToken
end
