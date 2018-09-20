class ApplicationController < ActionController::Base
  include Pundit
  include Wor::Paginate
  rescue_from ActiveRecord::RecordInvalid, with: :render_validation_error
  rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_error
  rescue_from Pundit::NotAuthorizedError, with: :render_not_authorized_error

  def current_user
    current_api_v1_user
  end

  def render_not_authorized_error
    render json: { message: 'Not authorized to perform the action' }, status: :forbidden
  end

  def render_record_not_found_error
    render json: { message: 'Resource not found' }, status: :not_found
  end

  def render_validation_error
    render json: { message: 'Validation failed' }, status: :unprocessable_entity
  end
end
