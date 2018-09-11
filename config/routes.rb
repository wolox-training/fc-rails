Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books, only: [:show, :index]
      resources :rents, only: [:create, :index], path: 'users/:user_id/rents'
      mount_devise_token_auth_for 'User', at: 'users/sessions', controllers: { sessions: "api/v1/devise_token_auth_custom/sessions" }
    end
  end
end
