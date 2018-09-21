class ApplicationController < ActionController::Base
  include Pundit
  include Wor::Paginate
  rescue_from Pundit::NotAuthorizedError, with: :render_not_authorized_error

  def current_user
    current_api_v1_user
  end

  def render_not_authorized_error
    render json: { message: 'Not authorized to perform the action' }, status: :forbidden
  end
end
