class ApplicationController < ActionController::Base
  include Wor::Paginate
  rescue_from  ActiveRecord::RecordInvalid, with: :render_validation_error

  def render_validation_error
    render json: {message: "Validation failed"}, status: :unprocessable_entity
  end
end
