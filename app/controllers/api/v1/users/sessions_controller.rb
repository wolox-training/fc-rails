class Api::V1::Users::SessionsController < Devise::SessionsController
  POST /resource/sign_in
  def create
    skip_before_action :super
  end

  DELETE /resource/sign_out
  def destroy
    skip_before_action :super
  end
end
