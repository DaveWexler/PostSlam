Rails.application.routes.draw do
  devise_for :users

  resources :posts

  devise_scope :user do
    root to: "home#index"
  end

  get '/about', to: 'home#about'

end
