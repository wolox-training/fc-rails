Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'users/sessions'
    end
  end
end
