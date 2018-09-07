class Session::SessionsController < Devise::SessionsController
  before_action :authenticate_api_v1_user!
  # rubocop:disable Rails/LexicallyScopedActionFilter
  skip_before_action :authenticate_api_v1_user!, only: [:create]
  # rubocop:enable Rails/LexicallyScopedActionFilter
end
