Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :book
      mount_devise_token_auth_for 'User', at: 'users/sessions'
    end
  end
end
