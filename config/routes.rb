Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  namespace :api do
    namespace :v1 do
      resources :books, only: [:show, :index]
      resources :book_suggestions, only: [:create, :new]
      resources :users do
        resources :rents, only: [:create, :index]
      end
      mount_devise_token_auth_for 'User', at: 'users/sessions', controllers: { sessions: "api/v1/devise_token_auth_custom/sessions" }
    end
  end
end
