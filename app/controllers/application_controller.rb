class ApplicationController < ActionController::Base
  include Pundit
  include Wor::Paginate

  def current_user
    current_api_v1_user
  end
end
