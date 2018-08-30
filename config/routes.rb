Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'books', to: 'book#index'
      get 'book/:id', to: 'book#show'
    end
  end
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'users/sessions'
    end
  end
end
