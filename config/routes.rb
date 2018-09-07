Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books, only: [:show, :index]
      mount_devise_token_auth_for 'User', at: 'users/sessions', controllers: { sessions: "api/v1/devise_token_auth_custom/sessions" }
    end
  end
end
