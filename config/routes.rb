Rails.application.routes.draw do
  devise_for :users
  resources :contacts
  # get 'home/index'
  get '/home/about'
  get '/contacts/new'
  root 'contacts#index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
