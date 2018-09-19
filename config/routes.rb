Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :api do
    namespace :v1 do
      resources :books, only: [:show, :index]
      resources :rents, only: [:create, :index], path: 'users/:user_id/rents'
      resources :book_suggestions, only: [:create, :new]
      mount_devise_token_auth_for 'User', at: 'users/sessions', controllers: { sessions: "api/v1/devise_token_auth_custom/sessions" }
    end
  end
end
