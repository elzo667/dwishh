Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get '/users/sign_in', to: 'devise/sessions#new', as: :new_user_session
post '/users/sign_in', to: 'devise/sessions#create', as: :user_session
delete '/users/sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
get '/users/password/new', to: 'devise/passwords#new', as: :new_user_password
get '/users/password/edit', to: 'devise/passwords#edit', as: :edit_user_password


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
